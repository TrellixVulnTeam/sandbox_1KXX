#ifndef OCTOMAP_WRAP_H
#define OCTOMAP_WRAP_H

#include <fcl/octree.h>
#include <fcl/collision.h>      // for fcl::collide()
#include <fcl/collision_data.h> // for fcl::CollisionRe{quest,sult}

#include <octomap/octomap.h>
#include <octomap/OcTree.h>

#include <memory>  // for std::shared_ptr

class OctomapWrap {
public:
  size_t Nx = 0;
  size_t Ny = 0;
  size_t Nz = 0;

  OctomapWrap(double resolution)
    : Nx(1/resolution), Ny(1/resolution), Nz(1/resolution)
    , _data(new octomap::OcTree(resolution))
    , _collision_object(new fcl::OcTree(_data))
  {
    _data->useBBXLimit(true);
    octomap::point3d min {0.0, 0.0, 0.0};
    octomap::point3d max {1.0, 1.0, 1.0};
    _data->setBBXMin(min);
    _data->setBBXMax(max);
  }

  OctomapWrap(const OctomapWrap &other)
    : Nx(other.Nx), Ny(other.Ny), Nz(other.Nz)
    , _data(new octomap::OcTree(*other._data))
    , _collision_object(new fcl::OcTree(_data))
  {
    _collision_object->setUserData(other._collision_object->getUserData());
    //_collision_object->setTransform(other._collision_object->getTransform());
    //_collision_object->setCostDensity(other._collision_object->getCostDensity());
  }

  OctomapWrap(OctomapWrap &&other) // move
    : Nx(other.Nx), Ny(other.Ny), Nz(other.Nz)
    , _data(std::move(other._data))
    , _collision_object(std::move(other._collision_object))
  {}

  size_t memoryUsage() const { return _data->memoryUsage(); }
  size_t nblocks() const { return _data->size(); }

  void add_point(float x, float y, float z) {
    _data->updateNode(octomap::point3d{x, y, z}, true);
  }

  void add_sphere(double x, double y, double z, double r) {
    // Algorithm:
    // 1. add the sphere center to the voxelization
    // 2. grow the sphere center, asking each voxel center to see if it is inside
    //    the sphere

    // 1. add center
    add_point(x, y, z);

    // 2. grow the sphere center, asking each voxel center to see if it is inside
    //    the sphere
    auto is_in_sphere = [x, y, z, r](double _x, double _y, double _z) {
      double dx = x - _x;
      double dy = y - _y;
      double dz = z - _z;
      bool is_in = dx*dx + dy*dy + dz*dz <= r*r;
      //std::cout << "  add_sphere(): checking is in sphere "
      //             "(" << _x << ", " << _y << ", " << _z << "): "
      //          << is_in << std::endl;
      return is_in;
    };

    auto idx_to_voxel_center = [this] (size_t _ix, size_t _iy, size_t _iz) {
      float x = this->dx() * (_ix + 0.5);
      float y = this->dy() * (_iy + 0.5);
      float z = this->dz() * (_iz + 0.5);
      return octomap::point3d{x, y, z};
    };

    // checks the center of the voxel against the sphere
    auto voxel_ctr_is_in_sphere = [&is_in_sphere, &idx_to_voxel_center]
      (size_t _ix, size_t _iy, size_t _iz) {
        auto p = idx_to_voxel_center(_ix, _iy, _iz);
        return is_in_sphere(p.x(), p.y(), p.z());
      };

    // just check all of them
    //for (size_t ix = 0; ix < Nx; ix++) {
    //  for (size_t iy = 0; iy < Ny; iy++) {
    //    for (size_t iz = 0; iz < Nz; iz++) {
    //      if (voxel_ctr_is_in_sphere(ix, iy, iz)) {
    //        this->set_cell(ix, iy, iz);
    //      }
    //    }
    //  }
    //}
    for (size_t ix = 0; ix < Nx; ix++) {
      for (size_t iy = 0; iy < Ny; iy++) {
        for (size_t iz = 0; iz < Nz; iz++) {
          auto p = idx_to_voxel_center(ix, iy, iz);
          _data->updateNode(p, is_in_sphere(p.x(), p.y(), p.z()));
        }
      }
    }

    //// do a growing algorithm with a frontier and a visited
    //using IdxType = std::tuple<size_t, size_t, size_t>;
    //std::stack<IdxType> frontier;
    //auto visited = std::make_unique<VoxelObject<Nx, Ny, Nz>>();

    //auto check_push = [&frontier, &visited](size_t _ix, size_t _iy, size_t _iz) {
    //  if (!visited->cell(_ix, _iy, _iz) && _ix < Nx && _iy < Ny && _iz < Nz) {
    //    //std::cout << "  add_sphere(): pushing: "
    //    //          << _ix << ", " << _iy << ", " << _iz << std::endl;
    //    frontier.push(IdxType{_ix, _iy, _iz});
    //    visited->set_cell(_ix, _iy, _iz);
    //  }
    //};

    //check_push(ix, iy, iz);
    //while(!frontier.empty()) {
    //  auto [ix, iy, iz] = frontier.top();
    //  frontier.pop();
    //  if (voxel_ctr_is_in_sphere(ix, iy, iz)) {
    //    this->set_cell(ix, iy, iz);
    //    check_push(ix-1, iy, iz);
    //    check_push(ix+1, iy, iz);
    //    check_push(ix, iy-1, iz);
    //    check_push(ix, iy+1, iz);
    //    check_push(ix, iy, iz-1);
    //    check_push(ix, iy, iz+1);
    //  }
    //}

    // 3. for each voxel adjacent to the end of the growing, check if that voxel
    //    box collides with the sphere at all.  If so, add it to the voxelization
    // TODO: implement
  }

  bool collides(const OctomapWrap &other) const {
    fcl::CollisionRequest request; // default request
    fcl::CollisionResult result;
    fcl::CollisionObject a(_collision_object);
    fcl::CollisionObject b(other._collision_object);
    fcl::collide(&a, &b, request, result);
    return result.isCollision();
  }

  void set_xlim(double xmin, double xmax) {
    if (xmin >= xmax) {
      throw std::length_error("xlimits must be positive in size");
    }
    auto min = _data->getBBXMin();
    auto max = _data->getBBXMax();
    min.x() = xmin;
    max.x() = xmax;
    _data->setBBXMin(min);
    _data->setBBXMax(max);
    Nx = (xmax - xmin) / dx();
  }

  void set_ylim(double ymin, double ymax) {
    if (ymin >= ymax) {
      throw std::length_error("ylimits must be positive in size");
    }
    auto min = _data->getBBXMin();
    auto max = _data->getBBXMax();
    min.y() = ymin;
    max.y() = ymax;
    _data->setBBXMin(min);
    _data->setBBXMax(max);
    Ny = (ymax - ymin) / dy();
  }

  void set_zlim(double zmin, double zmax) {
    if (zmin >= zmax) {
      throw std::length_error("zlimits must be positive in size");
    }
    auto min = _data->getBBXMin();
    auto max = _data->getBBXMax();
    min.z() = zmin;
    max.z() = zmax;
    _data->setBBXMin(min);
    _data->setBBXMax(max);
    Nz = (zmax - zmin) / dz();
  }

  std::pair<double, double> xlim() const {
    return { _data->getBBXMin().x(), _data->getBBXMax().x() };
  }
  std::pair<double, double> ylim() const {
    return { _data->getBBXMin().y(), _data->getBBXMax().y() };
  }
  std::pair<double, double> zlim() const {
    return { _data->getBBXMin().z(), _data->getBBXMax().z() };
  }

  // size of cells
  double dx() const { return _data->getResolution(); }
  double dy() const { return _data->getResolution(); }
  double dz() const { return _data->getResolution(); }

private:
  std::shared_ptr<octomap::OcTree> _data;
  std::shared_ptr<fcl::OcTree> _collision_object;
};

#endif // OCTOMAP_WRAP_H
