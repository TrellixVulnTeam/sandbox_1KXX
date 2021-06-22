/* [General Settings] */

// Which model to render
part = "all"; // ["all", "motor-mount", "sensor-mount", "L-bind", "bearing-mount", "motor-prismatic-coupler", "prismatic-joint", "needle-coupler", "fasteners"]

/* [Bounding Boxes (bb)] */

// bottom platform
show_platform_bb = false;

// all L brackets together
show_L_brackets_bb = false;

// the vertical slit for the L brackets
show_L_brackets_vsplit_bb = false;

// motor with shaft
show_motor_bb = false;

// the box part of the motor
show_motor_box_bb = false;

// printed mount for the motor to the L brackets
show_motor_mount_bb = false;

// full force sensor with protuberances on the sides
show_sensor_bb = false;

// inner aluminum body of the force sensor
show_sensor_inner_bb = false;

// printed mounting for the force sensor
show_sensor_mount_bb = false;

// printed mounting for the force sensor (part around L brackets)
show_sensor_mount_bracket_part_bb = false;

// printed mounting for the force sensor (part around force sensor)
show_sensor_mount_sensor_part_bb = false;

// printed piece binding the two L brackets at the bottom
show_L_binders_bb = false;

// printed motor coupler with prismatic shaft
show_motor_coupler_bb = false;

// printed motor coupler (motor shaft part)
show_motor_coupler_coupler_part_bb = false;

// printed motor coupler (hollow prismatic joint part)
show_motor_coupler_prismatic_part_bb = false;

// bearing
show_bearing_bb = false;

// printed mount from bearing to sensor
show_bearing_mount_bb = false;

// printed mount for bearing (part around bearing)
show_bearing_mount_bearing_part_bb = false;

// printed mount for bearing (part around sensor)
show_bearing_mount_sensor_part_bb = false;

// printed joint from motor coupler to bearing
show_prismatic_joint_bb = false;

// printed coupler from bearing to needle
show_needle_coupler_bb = false;


/* [Printed Motor Mount] */

motor_mount_front_buffer       =  4;
motor_mount_depth_buffer       =  5;
motor_mount_height             = 50;
motor_mount_shaft_clearance    =  0.7;
motor_mount_cylinder_clearance =  0.2;
motor_mount_bracket_clearance  =  0.2;
motor_mount_screw_clearance    =  0.2;


/* [Printed Sensor Mount] */

sensor_mount_height                 = 28;
sensor_mount_depth_buffer           =  5;
sensor_mount_width_buffer           =  4;
sensor_mount_bracket_clearance      =  0.2;
sensor_mount_screw_clearance        =  0.2;
sensor_mount_screw_size             =  5;
sensor_mount_nut_depth              =  2;
sensor_mount_sensor_clearance       =  0.4;
sensor_mount_sensor_wall            =  3;
sensor_mount_sensor_wall_slit_width =  8;
// vertical position (0 = bottom)
sensor_mount_z_offset               =  0;


/* [Printed L-Binder] */

L_binder_width             = 15;
L_binder_bracket_clearance = 0.2;
L_binder_wall_thickness    = 2;


/* [Printed Bearing Mount] */

bearing_mount_sensor_wall            =  4;
bearing_mount_sensor_clearance       =  0.2;
bearing_mount_screw_size             = 4;
bearing_mount_screw_clearance        = 0.2;
bearing_mount_screw_head_clearance   = 0.4;
bearing_mount_bearing_clearance      = 0.15;
// extra buffer away from the sensor mount
bearing_mount_bearing_sensor_x_buffer = 5;
bearing_mount_bearing_wall_thickness = 3;
bearing_mount_center_hole_clearance  = 3.5;
bearing_mount_nut_clearance          = 0.4;
bearing_mount_nut_cavity_depth       = 0.75;


/* [Printed Motor Prismatic Coupler] */

motor_coupler_length            = 15;
motor_coupler_diameter          = 20;
motor_coupler_screw_offset      =  6;
motor_coupler_screw_size        =  3; // [3, 4]
motor_coupler_screw_clearance   =  0.2;
motor_coupler_shaft_clearance   =  0.3;
motor_coupler_slit_size         =  1.3;
// thickness on both sides of the slit for the screw
motor_coupler_clamp_thickness   =  3;
motor_prismatic_length          = 20;
motor_prismatic_cavity_depth    = 17;
motor_prismatic_outer_diameter  = 10;
motor_prismatic_inner_diameter  =  7;
motor_coupler_mount_x_offset    =  5;


/* [Printed Prismatic Joint] */

prismatic_joint_length              = 20;
prismatic_joint_prism_clearance     = 0.25;
prismatic_joint_nut_bearing_buffer  = 3;
prismatic_joint_bearing_growth      = 3;
prismatic_joint_screw_size          = 3;
prismatic_joint_screw_clearance     = 0.2;
prismatic_joint_screw_depth         = 11;
prismatic_joint_nut_clearance       = 0.3;


/* [Printed Needle Coupler] */

needle_coupler_bearing_growth       = 2;
needle_coupler_screw_head_buffer    = 3;
needle_coupler_screw_head_clearance = 0.5;
needle_coupler_screw_length         = 16;
//needle_coupler_hex_wrench_clearance = 0.5;
needle_coupler_bracket_clearance    = 0.7;


/* [Platform] */

platform_width  = 60;
platform_height = 32;
platform_depth  = 42;

platform_side_screw_side_distance = 10;
platform_side_screw_top_distance  = 6;

platform_top_screw_width_side_distance = 15;
platform_top_screw_depth_side_distance = 6;
platform_top_screw_hole_height         = 16;

platform_screw_size = 4;


/* [L Bracket] */

L_bracket_height    = 120;
L_bracket_length    = 99.3;
L_bracket_width     = 24.1;
L_bracket_thickness = 2.7;

L_bracket_slit_width         = 5.2;
L_bracket_slit_end_distance  = 10.3;
L_bracket_bottom_slit_length = 69.8;
L_bracket_side_slit_length   = 89.8;


/* [Motor] */

motor_length = 47.3;
motor_depth  = 42;
motor_height = 42;

motor_cylinder_length     = 1.7;
motor_cylinder_diameter   = 21.9;
motor_shaft_length        = 24;
motor_shaft_diameter      = 4.9;
motor_shaft_cutout_length = 14.7;
motor_shaft_cutout_height = 4.5;

motor_screw_size          = 3;
motor_screw_depth         = 4.5;
motor_screw_side_distance = 5.5;
motor_screw_top_distance  = 5.5;

motor_mount_x_buffer      = 20;
motor_z_offset            = 20;


/* [Force Sensor] */

sensor_height    = 80.15;
sensor_width     = 12.6;
sensor_depth     = 12.6;

sensor_center_hole_diameter = 10.63;
sensor_center_hole_offset   = 3.56;

sensor_center_bulge_thickness = 1.18;
sensor_center_bulge_length    = 23.5;
sensor_center_bulge_depth     = 12.6;
sensor_right_bulge_thickness  = 1.6;

sensor_bottom_screw_size      = 5;
sensor_bottom_screw_offset_1  = 5;
sensor_bottom_screw_offset_2  = 20;
sensor_top_screw_size         = 4;
sensor_top_screw_offset_1     = 5;
sensor_top_screw_offset_2     = 20;


/* [Bearing] */

bearing_outer_diameter  = 22;
bearing_inner_diameter  =  8;
bearing_thickness       =  7;
bearing_inner_clearance = 0.2;
bearing_joining_screw_size = 4;


/* [General Print Settings] */

sacrificial_bridging                = true;
first_layer_height                  = 0.2;
layer_height                        = 0.2;
extrusion_width                     = 0.45;

/* [Advanced Settings] */

show_fasteners = true;
show_cutouts = false;
simplify_fasteners = true;
eps = 0.02;
$fn = 20;


/* [Colors] */

platform_color     = "#ffff33ff";
bracket_color      = "#ddddddff";
screw_color        = "#777777ff";
nut_color          = "#b200a8ff";
washer_color       = "#b200a8ff";
force_sensor_color = "#6cff6cff";
motor_color        = "#56beffff";
bearing_color      = "#ff00ffff";
printed_color_1    = "#4cffdbaa";




//
// helpful calculated distances
//

sensor_bottom_screw_distance =
    sensor_bottom_screw_offset_2 - sensor_bottom_screw_offset_1;
sensor_top_screw_distance =
    sensor_top_screw_offset_2 - sensor_top_screw_offset_1;



// implementation

use <./helpers.scad>
use <screwlib.scad>

//---------------------------//
// bounding boxes of objects //
//---------------------------//
//
// Idea is to have each individual object generated by a module such that its
// center (at least to its bounding box) is at the origin.  The main level will
// then translate each object to their location.
//
// Maybe this is a good idea.  But ultimately, it's more important to
// precompute the bounding boxes of each object (and locations) so that further
// object locations can be specified relative to other bounding boxes.
//
// For now, we are assuming that the rotation of each object can be determined
// independently of other objects.

platform_bb = bb(
    center=[platform_width/2, platform_depth/2, platform_height/2],
    //center = [0, 0, 0],
    dim = [platform_width, platform_depth, platform_height]
  );

L_brackets_bb = bb(
    center = [
      bb_xcenter(platform_bb),
      bb_ycenter(platform_bb),
      bb_zmax(platform_bb)
        + (L_bracket_height + L_bracket_thickness) / 2
    ],
    dim = [
      L_bracket_length + L_bracket_thickness,
      L_bracket_width
        + platform_depth
        - 2 * platform_top_screw_depth_side_distance,
      L_bracket_height + L_bracket_thickness
    ]
  );

// vertical slit in L_brackets() (going through both side brackets)
// Note: -x side has a lower slit than the +x side
// TODO: switch which L_bracket is on top; we want the force sensor to be able
//       to be mounted lower.
L_brackets_vsplit_bb = bb(
    center = bb_center(L_brackets_bb) + [
      0,
      0,
      bb_zdim(L_brackets_bb) / 2
        - L_bracket_side_slit_length / 2
        - L_bracket_thickness / 2
        - L_bracket_slit_end_distance
    ],
    dim = [
      bb_xdim(L_brackets_bb),
      bb_ydim(L_brackets_bb)
        - L_bracket_width
        + L_bracket_slit_width,
      L_bracket_side_slit_length
        + L_bracket_thickness
    ]
  );

L_bracket_inbetween_space = bb_ydim(L_brackets_bb) - 2 * L_bracket_width;

// specifically for the box part of the motor
motor_box_bb = bb(
    center = [
      bb_xmin(L_brackets_bb)
        - motor_length / 2
        - motor_cylinder_length,
      bb_ycenter(L_brackets_bb),
      bb_zmin(L_brackets_vsplit_bb)
        + motor_screw_size / 2
        + motor_height / 2
        - motor_screw_top_distance
        + motor_z_offset
    ],
    dim = [
      motor_length,
      motor_depth,
      motor_height
    ]
  );

// for the full motor, including box and shaft
motor_bb = bb(
    center = bb_center(motor_box_bb) + [motor_shaft_length / 2, 0, 0],
    dim = bb_dim(motor_box_bb) + [motor_shaft_length, 0, 0]
  );

motor_mount_bb = bb(
    center = [
      bb_xmax(motor_box_bb)
        + motor_cylinder_length / 2
        + L_bracket_thickness / 2
        + motor_mount_front_buffer / 2,
      bb_ycenter(motor_box_bb),
      bb_zcenter(motor_box_bb)
    ],
    dim = [
      motor_cylinder_length
        + L_bracket_thickness
        + motor_mount_front_buffer,
      bb_ydim(L_brackets_bb)
        + 2 * motor_mount_bracket_clearance
        + 2 * motor_mount_depth_buffer,
      motor_mount_height
    ]
  );

sensor_mount_bracket_part_bb = bb(
    center = [
      bb_xmax(L_brackets_bb)
        - L_bracket_thickness / 2,
      bb_ycenter(L_brackets_bb),
      bb_zmin(L_brackets_vsplit_bb)
        + L_bracket_thickness
        + sensor_mount_screw_size / 2
        + sensor_mount_screw_clearance
        + sensor_bottom_screw_distance / 2
        + sensor_mount_z_offset
    ],
    dim = [
      L_bracket_thickness
        + 2 * sensor_mount_width_buffer
        + 2 * sensor_mount_bracket_clearance,
      bb_ydim(L_brackets_bb)
        + 2 * sensor_mount_depth_buffer
        + 2 * sensor_mount_bracket_clearance,
      sensor_mount_height
    ]
  );

// force sensor without the bulges, just the main aluminum body
sensor_inner_bb = bb(
    center = [
      bb_xmin(sensor_mount_bracket_part_bb)
        - sensor_width / 2
        - sensor_mount_sensor_clearance,
      bb_ymin(L_brackets_vsplit_bb)
        + L_bracket_slit_width / 2,
      // align so the bottom screws align with the sensor mount bracket
      bb_zcenter(sensor_mount_bracket_part_bb)
        + sensor_height / 2
        - sensor_bottom_screw_offset_1
        - sensor_bottom_screw_distance / 2
    ],
    dim = [
      sensor_width,
      sensor_depth,
      sensor_height
    ]
  );

sensor_bb = bb(
    center = bb_center(sensor_inner_bb)
        + [0, -sensor_right_bulge_thickness / 2, 0],
    dim = bb_dim(sensor_inner_bb)
        + [2 * sensor_center_bulge_thickness, sensor_right_bulge_thickness, 0]
  );

sensor_mount_sensor_part_bb = bb(
    center = [
      bb_xcenter(sensor_bb)
        - sensor_mount_sensor_wall / 2,
      bb_ycenter(sensor_bb),
      bb_zcenter(sensor_mount_bracket_part_bb)
    ],
    dim = [
      bb_xdim(sensor_inner_bb)
        + 2 * sensor_mount_sensor_clearance
        + sensor_mount_sensor_wall,
      bb_ydim(sensor_bb)
        + 2 * sensor_mount_sensor_clearance
        + 2 * sensor_mount_sensor_wall,
      bb_zdim(sensor_mount_bracket_part_bb)
    ]
  );

sensor_mount_bb = bb_join(sensor_mount_bracket_part_bb,
                          sensor_mount_sensor_part_bb);

L_binder_1_bb = bb(
    center = [
      bb_xmin(platform_bb)
        - L_binder_width / 2,
      bb_ycenter(L_brackets_bb),
      bb_zmax(platform_bb)
        + L_bracket_thickness
    ],
    dim = [
      L_binder_width,
      bb_ydim(L_brackets_bb)
        + 2 * L_binder_bracket_clearance
        + 2 * L_binder_wall_thickness,
      2 * L_bracket_thickness
        + 2 * L_binder_bracket_clearance
        + 2 * L_binder_wall_thickness
    ]
  );

L_binder_2_bb = bb(
    center = [
      bb_xmax(platform_bb)
        + L_binder_width / 2,
      bb_ycenter(L_binder_1_bb),
      bb_zcenter(L_binder_1_bb)
    ],
    dim = bb_dim(L_binder_1_bb)
  );

L_binders_bb = bb_join(L_binder_1_bb, L_binder_2_bb);

motor_coupler_coupler_part_bb = bb(
    center = [
      bb_xmax(motor_mount_bb)
        + motor_coupler_length / 2
        + motor_coupler_mount_x_offset,
      bb_ycenter(motor_bb),
      bb_zcenter(motor_bb)
    ],
    dim = [
      motor_coupler_length,
      motor_coupler_diameter,
      motor_coupler_diameter
    ]
  );

motor_coupler_prismatic_part_bb = bb(
    center = bb_center(motor_coupler_coupler_part_bb) + [
      bb_xdim(motor_coupler_coupler_part_bb) / 2
        + motor_prismatic_length / 2,
      0,
      0
    ],
    dim = [
      motor_prismatic_length,
      cos(30) * motor_prismatic_outer_diameter, // because of flat sides
      motor_prismatic_outer_diameter
    ]
  );

motor_coupler_bb = bb_join(motor_coupler_coupler_part_bb,
                           motor_coupler_prismatic_part_bb);

bearing_bb = bb(
    center = [
      bb_xmin(sensor_mount_bb)
        - bearing_thickness / 2
        - bearing_mount_bearing_sensor_x_buffer,
      bb_ycenter(motor_bb),
      bb_zcenter(motor_bb)
    ],
    dim = [
      bearing_thickness,
      bearing_outer_diameter,
      bearing_outer_diameter
    ]
  );

bearing_mount_bearing_part_bb = bb(
    center = bb_center(bearing_bb)
             + (- bearing_mount_bearing_wall_thickness / 2
                - bearing_mount_bearing_clearance
               ) * [1, 0, 0],
    dim = [
      bb_xdim(bearing_bb)
        + bearing_mount_bearing_wall_thickness,
      bb_ydim(bearing_bb)
        + 2 * bearing_mount_bearing_clearance
        + 2 * bearing_mount_bearing_wall_thickness,
      bb_zdim(bearing_bb)
        + 2 * bearing_mount_bearing_clearance
        + 2 * bearing_mount_bearing_wall_thickness
    ]
  );

bearing_mount_sensor_part_bb = bb(
    center = [
      bb_xcenter(sensor_inner_bb),
      bb_ycenter(sensor_inner_bb),
      bb_zmax(sensor_inner_bb)
        - sensor_top_screw_offset_2 / 2
        - sensor_top_screw_size / 4
        + bearing_mount_sensor_clearance / 2
    ],
    dim = [
      bb_xdim(sensor_inner_bb)
        + 2 * bearing_mount_sensor_clearance
        + 2 * bearing_mount_sensor_wall,
      bb_ydim(sensor_inner_bb)
        + 2 * bearing_mount_sensor_clearance
        + 2 * bearing_mount_sensor_wall,
      sensor_top_screw_offset_2
        + sensor_top_screw_size / 2
        + 2 * bearing_mount_sensor_wall
        + bearing_mount_sensor_clearance
    ]
  );

bearing_mount_bb = bb_join(bearing_mount_bearing_part_bb,
                           bearing_mount_sensor_part_bb);

prismatic_joint_bb = bb(
    center = [
      bb_xmin(bearing_bb)
        - prismatic_joint_length / 2
        - prismatic_joint_nut_bearing_buffer
        - M_nut_height(prismatic_joint_screw_size) / 2
        - prismatic_joint_nut_clearance
        + bearing_thickness / 6,
      bb_ycenter(bearing_bb),
      bb_zcenter(bearing_bb)
    ],
    dim = [
      prismatic_joint_length
        + 2 * prismatic_joint_nut_bearing_buffer
        + M_nut_height(prismatic_joint_screw_size)
        + 2 * prismatic_joint_nut_clearance
        + bearing_thickness / 3,
      bearing_inner_diameter
        - 2 * bearing_inner_clearance
        + 2 * prismatic_joint_bearing_growth,
      bearing_inner_diameter
        - 2 * bearing_inner_clearance
        + 2 * prismatic_joint_bearing_growth,
    ]
  );

bearing_to_bracket_distance =
    bb_xmax(L_brackets_bb)
      - L_bracket_thickness
      - bb_xmax(bearing_bb);

needle_coupler_bb = bb(
    center = [
      bb_xmax(bearing_bb)
        + bearing_to_bracket_distance / 2
        + L_bracket_thickness / 2
        + needle_coupler_bracket_clearance / 2
        - bearing_thickness / 6,
      bb_ycenter(bearing_bb),
      bb_zcenter(bearing_bb)
    ],
    dim = [
      L_bracket_thickness
        + bearing_to_bracket_distance
        + needle_coupler_bracket_clearance
        + bearing_thickness / 3,
      bearing_inner_diameter
        - 2 * bearing_inner_clearance
        + 2 * needle_coupler_bearing_growth,
      bearing_inner_diameter
        - 2 * bearing_inner_clearance
        + 2 * needle_coupler_bearing_growth
    ]
  );


//
// Actual generation
//

if (part == "all") {
  translate(bb_center(platform_bb)) platform();
  translate(bb_center(L_brackets_bb)) L_brackets();
  if (show_fasteners) { L_brackets_screws(); }
  translate(bb_center(motor_bb)) motor();
  translate(bb_center(motor_mount_bb)) motor_mount();
  if (show_fasteners) { motor_mount_screws(); }
  translate(bb_center(sensor_bb)) force_sensor();
  translate(bb_center(sensor_mount_bb)) sensor_mount();
  if (show_fasteners) { sensor_mount_screws(); }
  translate(bb_center(L_binders_bb)) L_binders();
  translate(bb_center(motor_coupler_bb)) motor_coupler();
  if (show_fasteners) { motor_coupler_screws(); }
  translate(bb_center(bearing_bb)) bearing();
  translate(bb_center(bearing_mount_bb)) bearing_mount();
  if (show_fasteners) { bearing_mount_screws(); }
  translate(bb_center(prismatic_joint_bb)) prismatic_joint();
  translate(bb_center(needle_coupler_bb)) needle_coupler();
  if (show_fasteners) { needle_prismatic_screws(); }
}

if (part == "fasteners") {
  L_brackets_screws();
  motor_mount_screws();
  sensor_mount_screws();
  motor_coupler_screws();
  bearing_mount_screws();
  needle_prismatic_screws();
}

if (part == "motor-mount") {
  motor_mount(sacrificial_bridging=sacrificial_bridging, show_cutouts=show_cutouts);
}

if (part == "sensor-mount") {
  sensor_mount(show_cutouts = show_cutouts);
}

if (part == "L-bind") {
  L_binder(show_cutouts = show_cutouts);
}

if (part == "bearing-mount") {
  bearing_mount(sacrificial_bridging = sacrificial_bridging,
                show_cutouts = show_cutouts);
}

if (part == "motor-prismatic-coupler") {
  motor_coupler(show_cutouts = show_cutouts);
}

if (part == "prismatic-joint") {
  prismatic_joint(sacrificial_bridging = sacrificial_bridging,
                  show_cutouts = show_cutouts);
}

if (part == "needle-coupler") {
  needle_coupler(show_cutouts = show_cutouts);
}


//
// Showing bounding boxes (if enabled)
//

check_show_bb(show_platform_bb, platform_bb);
check_show_bb(show_L_brackets_bb, L_brackets_bb);
check_show_bb(show_L_brackets_vsplit_bb, L_brackets_vsplit_bb);
check_show_bb(show_motor_box_bb, motor_box_bb);
check_show_bb(show_motor_bb, motor_bb);
check_show_bb(show_motor_mount_bb, motor_mount_bb);
check_show_bb(show_sensor_inner_bb, sensor_inner_bb);
check_show_bb(show_sensor_bb, sensor_bb);
check_show_bb(show_sensor_mount_bracket_part_bb,
              sensor_mount_bracket_part_bb);
check_show_bb(show_sensor_mount_sensor_part_bb,
              sensor_mount_sensor_part_bb);
check_show_bb(show_sensor_mount_bb, sensor_mount_bb);
check_show_bb(show_L_binders_bb, L_binders_bb);
check_show_bb(show_motor_coupler_bb, motor_coupler_bb);
check_show_bb(show_motor_coupler_coupler_part_bb,
              motor_coupler_coupler_part_bb);
check_show_bb(show_motor_coupler_prismatic_part_bb,
              motor_coupler_prismatic_part_bb);
check_show_bb(show_bearing_bb, bearing_bb);
check_show_bb(show_bearing_mount_bb, bearing_mount_bb);
check_show_bb(show_bearing_mount_bearing_part_bb, bearing_mount_bearing_part_bb);
check_show_bb(show_bearing_mount_sensor_part_bb, bearing_mount_sensor_part_bb);
check_show_bb(show_prismatic_joint_bb, prismatic_joint_bb);
check_show_bb(show_needle_coupler_bb, needle_coupler_bb);

//
// Helper functions
//

module check_show_bb(cond, bb) {
  if (cond) {
    show_bb(bb);
  }
}

module platform() {
  color(platform_color)
  difference() {
    cube(bb_dim(platform_bb), center = true);
    // side screw holes
    mov_z(platform_height/2 - platform_side_screw_top_distance)
      dupe_x(
          platform_width
            - 2 * platform_side_screw_side_distance
        )
      rot_x(-90)
      cylinder(r=platform_screw_size/2, h=platform_depth+2*eps, center=true);
    // top screw holes
    mov_z(platform_height / 2 - platform_top_screw_hole_height)
      dupe_x(
          platform_width
            - 2 * platform_top_screw_width_side_distance
        )
      dupe_y(
          platform_depth
            - 2 * platform_top_screw_depth_side_distance
        )
      cylinder(r=platform_screw_size/2, h=platform_top_screw_hole_height+eps);
  }
}

// screws for both pairs of L brackets to the platform
module L_brackets_screws() {
  translate([
      bb_xcenter(L_brackets_bb),
      bb_ycenter(L_brackets_bb),
      bb_zmin(L_brackets_bb)
        + 2 * L_bracket_thickness
    ])
    dupe_x(
      platform_width
        - 2 * platform_top_screw_width_side_distance
      )
    dupe_y(
      platform_depth
        - 2 * platform_top_screw_depth_side_distance
      )
    union() {
      color(washer_color)
        M_washer(platform_screw_size);
      color(screw_color)
        mov_z(M_screw_head_height(platform_screw_size)
            + M_washer_thickness(platform_screw_size))
        rot_x(180)
        M_screw(platform_screw_size, 12, simplify=simplify_fasteners);
    }
}

// all four L brackets aligned
module L_brackets() {
  dupe_y(bb_ydim(L_brackets_bb) - L_bracket_width)
  mir_x(dx=L_bracket_thickness, dz=L_bracket_thickness)
    L_bracket();
}

// single L-bracket near the origin
module L_bracket() {
  big_r = L_bracket_width / 2;
  color(bracket_color)
  translate(-.5*[L_bracket_length, L_bracket_width, L_bracket_height])
  difference() {
    union() {
      cube([L_bracket_length-big_r, L_bracket_width, L_bracket_thickness]);
      cube([L_bracket_thickness, L_bracket_width, L_bracket_height-big_r]);
      translate([L_bracket_length-big_r, big_r, 0])
        cylinder(r=big_r, h=L_bracket_thickness);
      translate([0, big_r, L_bracket_height-big_r])
        rot_y(90)
        cylinder(r=big_r, h=L_bracket_thickness);
    }
    translate([
        L_bracket_length - L_bracket_bottom_slit_length - L_bracket_slit_end_distance,
        (L_bracket_width - L_bracket_slit_width) / 2,
        -eps
      ])
      L_bracket_slit(
          L_bracket_bottom_slit_length,
          L_bracket_slit_width,
          L_bracket_thickness + 2*eps
        );
    translate([
        -eps,
        (L_bracket_width - L_bracket_slit_width) / 2,
        L_bracket_height - L_bracket_slit_end_distance
      ])
      rot_y(90)
      L_bracket_slit(
          L_bracket_side_slit_length,
          L_bracket_slit_width,
          L_bracket_thickness + 2*eps
        );
  }
}

module L_bracket_slit(length, width, thickness) {
  r = width / 2;
  union() {
    mov_x(r) cube([length - width, width, thickness]);
    mov_xy(r, r) cylinder(r=r, h=thickness);
    mov_xy(length - r, r) cylinder(r=r, h=thickness);
  }
}

module motor() {
  color(motor_color)
  mov_x(- motor_shaft_length / 2) // center offset because of the shaft
  difference() {
    union() {
      // main body
      intersection() {
        cube(bb_dim(motor_box_bb), center=true);
        rot_x(45)
          cube(bb_dim(motor_box_bb) + [2*eps, 10, 10], center=true);
      }

      // cylinder
      mov_x(motor_length / 2 - eps)
        rot_y(90)
        cylinder(r=motor_cylinder_diameter/2, h=motor_cylinder_length+eps);

      // shaft
      mov_x(motor_length / 2)
        rot_y(90)
        difference() {
          cylinder(d=motor_shaft_diameter, h=motor_shaft_length);
          translate([
            -motor_shaft_diameter / 2 - eps,
            -motor_shaft_diameter / 2,
            motor_shaft_length - motor_shaft_cutout_length
            ])
            cube([
                motor_shaft_diameter - motor_shaft_cutout_height + eps,
                motor_shaft_diameter,
                motor_shaft_cutout_length + eps
              ]);
        }
    }

    // screw holes
    mov_x(motor_length / 2 - motor_screw_depth)
      dupe_y(motor_depth - 2 * motor_screw_side_distance)
      dupe_z(motor_height - 2 * motor_screw_top_distance)
      rot_y(90)
      cylinder(d=motor_screw_size, h=motor_screw_depth+eps);
  }
}

module motor_mount(sacrificial_bridging=false, show_cutouts=false) {
  color(printed_color_1)
  union() {
    if (sacrificial_bridging) { motor_mount_sacrificial_bridging(); }
    difference() {
      // main body
      cube(bb_dim(motor_mount_bb), center=true);

      hash_if(show_cutouts)
      union() {
        // shaft hole
        rot_y(90)
          cylinder(
              r = motor_shaft_diameter / 2 + motor_mount_shaft_clearance,
              h = bb_xdim(motor_mount_bb) + 2 * eps,
              center = true
            );

        // motor cylinder slide in
        mov_x(-bb_xdim(motor_mount_bb) / 2 - eps)
          rot_y(90)
          cylinder(
              r = motor_cylinder_diameter / 2 + motor_mount_shaft_clearance,
              h = motor_cylinder_length + motor_mount_cylinder_clearance + eps
            );

        // bracket slide-in holes
        mov_x(- bb_xdim(motor_mount_bb) / 2
              + motor_cylinder_length
              + L_bracket_thickness / 2
              + motor_mount_bracket_clearance)
          dupe_y(
              L_bracket_width
              + L_bracket_inbetween_space
            )
          cube([
              L_bracket_thickness + 2 * motor_mount_bracket_clearance,
              L_bracket_width + 2 * motor_mount_bracket_clearance,
              motor_mount_height + 2 * eps
            ],
            center = true);

        // screw_holes
        dupe_y(motor_depth - 2 * motor_screw_side_distance)
          dupe_z(motor_height - 2 * motor_screw_top_distance)
          rot_y(90)
          cylinder(
              r = motor_screw_size / 2
                  + motor_mount_screw_clearance,
              h = bb_xdim(motor_mount_bb) + 2 * eps,
              center = true
            );
      }
    }
  }
}

module motor_mount_sacrificial_bridging() {
  screw_effective_diameter = motor_screw_size
        + 2 * motor_mount_screw_clearance;
  L_bracket_clearance_x_offset =
      motor_cylinder_length
      + L_bracket_thickness
      + 2 * motor_mount_bracket_clearance;
  cylinder_hole_xmax =
      - bb_xdim(motor_mount_bb) / 2
      + motor_cylinder_length
      + motor_mount_cylinder_clearance;

  // at the end of the motor cylinder
  mov_x(cylinder_hole_xmax + layer_height / 2)
    cube([
      layer_height,
      L_bracket_inbetween_space
        - 2 * motor_mount_bracket_clearance,
      motor_shaft_diameter
        + 2 * motor_mount_shaft_clearance
        + 2 * eps
      ],
      center=true);

  //// end of L-bracket slide-in hole, for the screw holes
  mov_x(- bb_xdim(motor_mount_bb) / 2
        + L_bracket_clearance_x_offset
        + layer_height / 2)
    cube([
        layer_height,
        bb_ydim(motor_mount_bb),
        bb_zdim(motor_mount_bb)
      ],
      center = true);
}

module motor_mount_screws() {
  translate([
      bb_xmax(motor_mount_bb),
      bb_ycenter(motor_mount_bb),
      bb_zcenter(motor_mount_bb)
    ])
    dupe_y(motor_depth - 2 * motor_screw_side_distance)
    dupe_z(motor_height - 2 * motor_screw_top_distance)
    union() {
      color(washer_color)
        rot_y(90)
        M_washer(motor_screw_size);
      color(screw_color)
        mov_x(M_screw_head_height(motor_screw_size)
              + M_washer_thickness(motor_screw_size))
        rot_y(-90)
        M_screw(motor_screw_size, 20, simplify=simplify_fasteners);
    }
}

module force_sensor() {
  // main chassey
  mov_y(sensor_right_bulge_thickness / 2)
  difference() {
    color(force_sensor_color)
    union() {
      // main body
      cube(bb_dim(sensor_inner_bb), center=true);
      // center bulge
      cube([
          bb_xdim(sensor_bb),
          sensor_center_bulge_depth,
          sensor_center_bulge_length
        ], center=true);
      // right bulge
      translate(- bb_dim(sensor_inner_bb) / 2
                - [0, sensor_right_bulge_thickness, 0])
        cube([
            bb_xdim(sensor_inner_bb),
            sensor_right_bulge_thickness + eps,
            bb_zdim(sensor_inner_bb) / 2
              - sensor_center_hole_offset
              - sensor_center_hole_diameter / 2
          ]);
    }

    // center holes
    dupe_z(2 * sensor_center_hole_offset)
      rot_x(-90)
      cylinder(d = sensor_center_hole_diameter,
               h = bb_ydim(sensor_bb) + 2 * eps,
               center = true);

    // bottom screw holes
    mov_z(- bb_zdim(sensor_inner_bb) / 2
           + sensor_bottom_screw_distance / 2
           + sensor_bottom_screw_offset_1)
      dupe_z(sensor_bottom_screw_distance)
      rot_y(90)
      cylinder(d = sensor_bottom_screw_size,
               h = bb_xdim(sensor_bb) + 2 * eps,
               center = true);

    // top screw holes
    mov_z(bb_zdim(sensor_inner_bb) / 2
          - sensor_top_screw_distance / 2
          - sensor_top_screw_offset_1)
      dupe_z(sensor_top_screw_distance)
      rot_y(90)
      cylinder(d = sensor_top_screw_size,
               h = bb_xdim(sensor_bb) + 2 * eps,
               center = true);
  }
}

module sensor_mount(show_cutouts=false) {
  // move from bracket part centered at the origin to full thing centered at
  // the origin
  translate(bb_center(sensor_mount_bracket_part_bb)
            - bb_center(sensor_mount_bb))
  color(printed_color_1)
  union() {
    difference() {
      // main body
      cube(bb_dim(sensor_mount_bracket_part_bb), center=true);

      hash_if(show_cutouts) {
        // L-bracket slide holes
        dupe_y(bb_ydim(L_brackets_bb) - L_bracket_width)
          cube([
              L_bracket_thickness
                + 2 * sensor_mount_bracket_clearance,
              L_bracket_width
                + 2 * sensor_mount_bracket_clearance,
              sensor_mount_height
                + 2 * eps
            ], center=true);

        // screw holes
        dupe_y(bb_ydim(L_brackets_bb) - L_bracket_width)
          dupe_z(sensor_bottom_screw_distance)
          rot_y(90)
          cylinder(d = sensor_bottom_screw_size
                       + 2 * sensor_mount_screw_clearance,
                   h = bb_xdim(sensor_mount_bracket_part_bb) + 2 * eps,
                   center = true);

        // hex holes on one side for nuts to slide into
        mov_x(- bb_xdim(sensor_mount_bracket_part_bb) / 2
              + sensor_mount_nut_depth / 2
              - eps / 2)
          mov_y(L_bracket_width / 2
                + L_bracket_inbetween_space / 2)
          dupe_z(sensor_bottom_screw_distance)
          rot_y(90)
          rot_z(30)
          cylinder(r = M_nut_outer_radius(sensor_bottom_screw_size)
                       + sensor_mount_screw_clearance,
                   h = sensor_mount_nut_depth + eps,
                   $fn = 6,
                   center = true);
      }
    }

    // part to wrap around the force sensor
    translate(- bb_center(sensor_mount_bracket_part_bb)
              + bb_center(sensor_mount_sensor_part_bb))
    difference() {
      mov_x(eps / 2)
        cube(bb_dim(sensor_mount_sensor_part_bb) + [eps, 0, 0],
             center = true);

      hash_if(show_cutouts) {
        // space for the sensor
        mov_x(sensor_mount_sensor_wall / 2 + eps)
          cube([
              bb_xdim(sensor_inner_bb)
                + 2 * sensor_mount_sensor_clearance
                + 2 * eps,
              bb_ydim(sensor_bb)
                + 2 * sensor_mount_sensor_clearance,
              bb_zdim(sensor_mount_sensor_part_bb)
                + 2 * eps
            ], center = true);
        // slit at the end
        mov_x(- bb_xdim(sensor_mount_sensor_part_bb) / 2
              + sensor_mount_sensor_wall / 2)
          cube([
              sensor_mount_sensor_wall
                + 2 * eps,
              sensor_mount_sensor_wall_slit_width,
              bb_zdim(sensor_mount_sensor_part_bb)
                + 2 * eps
            ], center = true);
      }
    }
  }
}

module sensor_mount_screws() {
  // screws mounting L to printed 2 to force sensor
  translate([
      bb_xmax(sensor_mount_bb),
      bb_ycenter(sensor_inner_bb),
      bb_zcenter(sensor_mount_bb)
    ])
    dupe_z(sensor_bottom_screw_distance)
    union() {
      color(screw_color)
        mov_x(M_screw_head_height(sensor_bottom_screw_size)
              + M_washer_thickness(sensor_bottom_screw_size))
        rot_y(-90)
        M_screw(sensor_bottom_screw_size, 20, simplify=simplify_fasteners);
      color(washer_color)
        rot_y(90)
        M_washer(sensor_bottom_screw_size);
    }

  // screws on the other L brackets attached with nuts
  translate([
      bb_xmax(sensor_mount_bb),
      bb_ymax(L_brackets_bb)
        - L_bracket_width / 2,
      bb_zcenter(sensor_mount_bb)
    ])
    dupe_z(sensor_bottom_screw_distance)
    union() {
      color(screw_color)
        mov_x(M_screw_head_height(sensor_bottom_screw_size)
              + M_washer_thickness(sensor_bottom_screw_size))
        rot_y(-90)
        M_screw(sensor_bottom_screw_size, 16, simplify=simplify_fasteners);
      color(washer_color)
        rot_y(90)
        M_washer(sensor_bottom_screw_size);
      color(nut_color)
        mov_x(- M_nut_height(sensor_bottom_screw_size)
              - bb_xdim(sensor_mount_bracket_part_bb)
              + sensor_mount_nut_depth)
        rot_y(90)
        rot_z(30)
        M_nut(sensor_bottom_screw_size, simplify=simplify_fasteners);
    }
}

module L_binders() {
  dupe_x(platform_width + L_binder_width) L_binder();
}

module L_binder(show_cutouts=false) {
  color(printed_color_1)
  difference() {
    cube(bb_dim(L_binder_1_bb), center = true);
    hash_if(show_cutouts)
      dupe_y(bb_ydim(L_brackets_bb) - L_bracket_width)
      cube([
          bb_xdim(L_binder_1_bb)
            + 2 * eps,
          L_bracket_width
            + 2 * L_binder_bracket_clearance,
          2 * L_bracket_thickness
            + 2 * L_binder_bracket_clearance
        ], center=true);
  }
}

module motor_coupler(show_cutouts = false) {
  // rotate and shift so it is at the correct orientation and centered
  mov_x(- bb_xdim(motor_coupler_bb) / 2)
  rot_y(90)
  rot_z(180)
  color(printed_color_1)
  difference() {
    // main body and prismatic joint
    union() {
      cylinder(d=motor_coupler_diameter, h=motor_coupler_length);
      mov_z(motor_coupler_length - eps)
        cylinder(d=motor_prismatic_outer_diameter,
                 h=motor_prismatic_length+eps,
                 $fn=6);
    }
    // delete motor shaft
    hash_if(show_cutouts) {
      difference() {
        mov_z(-eps)
          cylinder(r=motor_shaft_diameter/2 + motor_coupler_shaft_clearance,
                   h=motor_coupler_length
                     - 2 * layer_height
                     + 2 * eps);
        mov_x(
            motor_shaft_cutout_height
              - motor_shaft_diameter / 2
              + motor_coupler_shaft_clearance)
        mov_z(- 2 * eps)
          cube_pcp(
              motor_shaft_diameter,
              motor_shaft_diameter,
              motor_coupler_length + 3 * eps
            );
      }
      // remove a slit on the side
      // slit only up to prismatic piece on the last two layers
      mov_y(motor_prismatic_outer_diameter/2 * cos(30))
        mov_z(-eps)
        cube_cpp(motor_coupler_slit_size,
                 motor_coupler_diameter,
                 motor_coupler_length + 2 * eps);
      mov_z(-eps)
        cube_cpp(motor_coupler_slit_size,
                 motor_coupler_diameter,
                 motor_coupler_length
                   - 2 * layer_height
                   + 2 * eps);

      clamp_screw_y =
          motor_shaft_diameter / 4
            + motor_coupler_shaft_clearance / 2
            + motor_coupler_diameter / 4;
      clamp_screw_z = motor_coupler_screw_offset;
      // create holes for the screw, head, and nut
      // screw shaft hole
      translate([0, clamp_screw_y, clamp_screw_z])
        rot_y(90)
        cylinder(r=motor_coupler_screw_size/2 + motor_coupler_screw_clearance,
                 h=motor_coupler_diameter,
                 center=true);
      // screw head hole
      translate([
          motor_coupler_slit_size / 2
            + motor_coupler_clamp_thickness,
          clamp_screw_y,
          clamp_screw_z
        ])
        rot_y(90)
        cylinder(d=M_screw_head_diameter(motor_coupler_screw_size)
                   + 2 * motor_coupler_screw_clearance,
                 h=motor_coupler_diameter);
      // nut hole
      translate([
          - motor_coupler_slit_size / 2
            - motor_coupler_clamp_thickness,
          clamp_screw_y,
          clamp_screw_z
        ])
        rot_y(-90)
        rot_z(30)
        cylinder(r=M_nut_outer_radius(motor_coupler_screw_size)
                   + motor_coupler_screw_clearance,
                 h=motor_coupler_diameter,
                 $fn=6);

      // prismatic inner shaft
      mov_z(motor_coupler_length
          + motor_prismatic_length
          - motor_prismatic_cavity_depth
          )
        cylinder(d=motor_prismatic_inner_diameter,
                 h=max(motor_prismatic_length, motor_prismatic_cavity_depth + eps),
                 $fn=6);
    }
  }
}

module motor_coupler_screws() {
  screw_nut_distance = motor_coupler_slit_size
                       + 2 * motor_coupler_clamp_thickness;

  translate([
      bb_xmin(motor_coupler_coupler_part_bb)
        + motor_coupler_screw_offset,
      bb_ycenter(motor_coupler_coupler_part_bb)
        - motor_shaft_diameter / 4
        - motor_coupler_shaft_clearance / 2
        - motor_coupler_diameter / 4,
      bb_zcenter(motor_coupler_coupler_part_bb)
    ])
  {
    color(screw_color)
    mov_z(M_screw_head_height(motor_coupler_screw_size)
          + screw_nut_distance / 2)
      rot_x(180)
      M_screw(motor_coupler_screw_size, 12, simplify=simplify_fasteners);
    color(nut_color)
      mov_z(- M_nut_height(motor_coupler_screw_size)
            - screw_nut_distance / 2)
      rot_z(30)
      M_nut(motor_coupler_screw_size, simplify=simplify_fasteners);
  }
}

module bearing() {
  color(bearing_color)
  rot_y(90)
  difference() {
    cylinder(center=true, d=bearing_outer_diameter, h=bearing_thickness);
    cylinder(center=true, d=bearing_inner_diameter, h=bearing_thickness + 2*eps);
  }
}

module bearing_mount(sacrificial_bridging = false, show_cutouts=false) {
  sensor_part_center =
      bb_center(bearing_mount_sensor_part_bb) - bb_center(bearing_mount_bb);
  bearing_part_center =
      bb_center(bearing_mount_bearing_part_bb) - bb_center(bearing_mount_bb);
  local_sensor_cutout_bb = bb(
      center = [
        sensor_part_center.x,
        sensor_part_center.y,
        sensor_part_center.z
          - bb_zdim(sensor_inner_bb) / 2
          + bb_zdim(bearing_mount_sensor_part_bb) / 2
          - 2 * bearing_mount_sensor_clearance
          - bearing_mount_sensor_wall
      ],
      dim = bb_dim(sensor_inner_bb)
          + 2 * bearing_mount_sensor_clearance * [1, 1, 1]
    );
  local_bearing_bb = bb(
      center = bb_center(bearing_bb)
             - bb_center(bearing_mount_bb),
      dim = bb_dim(bearing_bb)
          + 2 * bearing_mount_bearing_clearance * [1, 1, 1]
    );

  if (sacrificial_bridging) {
    color(printed_color_1)
    bearing_mount_sacrificial_bridging();
  }

  color(printed_color_1)
  difference() {
    union() {
      // hat for the force sensor
      translate(sensor_part_center)
        cube(bb_dim(bearing_mount_sensor_part_bb), center=true);


      // connecting pieces
      hull() {
        // bearing cushion part
        translate(bearing_part_center)
          rot_y(90)
          cylinder(d = bb_ydim(bearing_mount_bearing_part_bb),
                   h = bb_xdim(bearing_mount_bearing_part_bb),
                   center = true);

        // cube in front of the force sensor part
        translate([
            - bb_xdim(bearing_mount_bb) / 2,
            sensor_part_center.y
              - bb_ydim(bearing_mount_sensor_part_bb) / 2,
            sensor_part_center.z
              - bb_zdim(bearing_mount_sensor_part_bb) / 2
          ])
          cube([
              bb_xdim(bearing_mount_bb) / 2
                + bb_xmin(local_sensor_cutout_bb)
                - sensor_center_bulge_thickness,
              bb_ydim(bearing_mount_sensor_part_bb),
              bb_zdim(bearing_mount_sensor_part_bb)
            ]);
      }

      // extra reinforcement around retainer screws
      translate(bearing_part_center
          + [1,0,0] * bearing_mount_nut_cavity_depth / 2)
        dupe_z(bb_zdim(bearing_bb)
             + bearing_mount_screw_size
             + 2 * bearing_mount_screw_clearance)
        rot_y(90)
        cylinder(d = bearing_mount_screw_size
                   + 2 * bearing_mount_screw_clearance
                   + 2 * bearing_mount_bearing_wall_thickness,
                 h = bb_xdim(bearing_mount_bearing_part_bb)
                     + bearing_mount_nut_cavity_depth,
                 center = true);
    }

    hash_if(show_cutouts)
    union() {
      // cutout for the sensor
      translate(bb_center(local_sensor_cutout_bb))
        cube(bb_dim(local_sensor_cutout_bb), center = true);

      // sensor screw mounting holes
      translate([
          0,
          bb_ycenter(local_sensor_cutout_bb),
          bb_zcenter(local_sensor_cutout_bb)
            + bb_zdim(sensor_inner_bb) / 2
            - sensor_top_screw_distance / 2
            - sensor_top_screw_offset_1
        ])
        dupe_z(sensor_top_screw_distance)
        rot_y(90)
        cylinder(d = bearing_mount_screw_size
                   + 2 * bearing_mount_screw_clearance,
                 h = bb_xdim(bearing_mount_bb) + 2 * eps,
                 center=true);

      // sensor screw head channels
      translate([
          - bb_xdim(bearing_mount_bb) / 2
            - eps,
          bb_ycenter(local_sensor_cutout_bb),
          bb_zcenter(local_sensor_cutout_bb)
            + bb_zdim(sensor_inner_bb) / 2
            - sensor_top_screw_distance / 2
            - sensor_top_screw_offset_1
        ])
        dupe_z(sensor_top_screw_distance)
        rot_y(90)
        cylinder(d = M_screw_head_diameter(bearing_mount_screw_size)
                   + 2 * bearing_mount_screw_head_clearance,
                 h = bb_xdim(bearing_mount_bb)
                   - bb_xdim(bearing_mount_sensor_part_bb));

      // bearing cutout
      translate(bb_center(local_bearing_bb)
              + bb_xdim(bearing_mount_bb) * [1, 0, 0] / 2)
        rot_y(90)
        cylinder(d = bb_ydim(local_bearing_bb),
                 h = bb_xdim(local_bearing_bb)
                   + bb_xdim(bearing_mount_bb),
                 center = true);
      // expanded out bearing cutout
      translate(bb_center(local_bearing_bb)
              + [1/2, 0, 0] * (bb_xdim(bearing_mount_bb) + bb_xdim(local_bearing_bb)))
        rot_y(90)
        cylinder(d1 = bb_ydim(local_bearing_bb),
                 d2 = 1.5 * bb_ydim(local_bearing_bb),
                 h = bb_xdim(bearing_mount_bb),
                 center = true);

      // center bearing cutout
      translate(bb_center(local_bearing_bb))
        rot_y(90)
        cylinder(d = bearing_inner_diameter
                   + 2 * bearing_mount_center_hole_clearance,
                 h = 2 * bb_xdim(bearing_mount_bb),
                 center = true);

      // cut away part of the hat
      translate([
          bearing_mount_sensor_wall / 2
            + bb_xmax(local_sensor_cutout_bb),
          sensor_part_center.y,
          sensor_part_center.z
        ])
        cube([
            bearing_mount_sensor_wall
              + 2 * eps,
            bb_ydim(bearing_mount_sensor_part_bb)
              + 2 * eps,
            bb_zdim(bearing_mount_sensor_part_bb)
              + 2 * eps
          ], center = true);

      // screws and nuts to rigidly mount bearing
      translate(bb_center(local_bearing_bb)
                + [1,0,0] * (bb_xdim(local_bearing_bb) / 2
                           - bearing_mount_nut_cavity_depth))
        dupe_z(
          bb_zdim(local_bearing_bb)
            + bearing_mount_screw_size
            + 2 * bearing_mount_screw_clearance
          )
        rot_y(90) {
          cylinder(d = bearing_mount_screw_size
                     + 2 * bearing_mount_screw_clearance,
                   h = bb_xdim(bearing_mount_bb),
                   center = true);
          cylinder(d = M_screw_head_diameter(bearing_mount_screw_size)
                     + 2 * bearing_mount_screw_head_clearance,
                   h = bb_xdim(bearing_mount_bb) / 2,
                   $fn = 6);
        }
    }
  }
}

module bearing_mount_sacrificial_bridging() {
  sensor_part_center =
      bb_center(bearing_mount_sensor_part_bb) - bb_center(bearing_mount_bb);

  translate(sensor_part_center + [1, 0, 0] * (
      layer_height / 2
        - bb_xdim(bearing_mount_sensor_part_bb) / 2
    ))
    cube([
        layer_height,
        bb_ydim(bearing_mount_sensor_part_bb),
        bb_zdim(bearing_mount_sensor_part_bb)
      ], center = true);
}

module bearing_mount_screws() {
  color(screw_color)
  translate([
      - M_screw_head_height(sensor_top_screw_size)
        + bb_xmin(bearing_mount_sensor_part_bb),
      bb_ycenter(bearing_mount_sensor_part_bb),
      bb_zmax(sensor_bb)
        - sensor_top_screw_offset_1
        - sensor_top_screw_distance / 2
    ])
    dupe_z(sensor_top_screw_distance)
    rot_y(90)
    M_screw(sensor_top_screw_size, 8, simplify=simplify_fasteners);

  translate(bb_center(bearing_mount_bearing_part_bb)
          - [1,0,0] * bb_xdim(bearing_mount_bearing_part_bb) / 2)
    dupe_z(bb_zdim(bearing_bb)
         + 2 * bearing_mount_screw_clearance
         + bearing_mount_screw_size)
    rot_y(90) {
      color(screw_color)
        mov_z(- M_screw_head_height(bearing_mount_screw_size)
              - M_washer_thickness(bearing_mount_screw_size))
        M_screw(bearing_mount_screw_size, 16, simplify=simplify_fasteners);
      color(washer_color)
        mov_z(- M_washer_thickness(bearing_mount_screw_size))
        M_washer(bearing_mount_screw_size);
      color(nut_color)
        mov_z(bb_xdim(bearing_mount_bearing_part_bb))
        M_nut(bearing_mount_screw_size, simplify=simplify_fasteners);
    }
}

module prismatic_joint(sacrificial_bridging = false, show_cutouts = false) {
  inside_bearing_diameter = bb_zdim(prismatic_joint_bb)
                          - 2 * prismatic_joint_bearing_growth;
  local_nut_region_bb = bb(
      center = [
        prismatic_joint_length
          + prismatic_joint_nut_bearing_buffer / 2
          + M_nut_height(prismatic_joint_screw_size) / 2
          + prismatic_joint_nut_clearance,
        0,
        0
      ],
      dim = [
        prismatic_joint_nut_bearing_buffer
          + M_nut_height(prismatic_joint_screw_size)
          + 2 * prismatic_joint_nut_clearance,
        bb_ydim(prismatic_joint_bb),
        bb_zdim(prismatic_joint_bb)
      ]
    );

  if (sacrificial_bridging) {
    color(printed_color_1)
    prismatic_joint_sacrificial_bridging();
  }

  mov_x(- bb_xdim(prismatic_joint_bb) / 2)
  difference() {

    // main body
    color(printed_color_1)
    rot_y(90)
    union() {
      cylinder(d = motor_prismatic_inner_diameter
                 - 2 * prismatic_joint_prism_clearance,
               h = prismatic_joint_length + eps,
               $fn = 6);
      mov_z(prismatic_joint_length) {
        cylinder(d = bb_zdim(prismatic_joint_bb),
                 h = prismatic_joint_nut_bearing_buffer
                   + M_nut_height(prismatic_joint_screw_size)
                   + 2 * prismatic_joint_nut_clearance
                   + eps);
        mov_z(prismatic_joint_nut_bearing_buffer
              + M_nut_height(prismatic_joint_screw_size)
              + 2 * prismatic_joint_nut_clearance) {
          cylinder(d1 = bb_zdim(prismatic_joint_bb),
                   d2 = inside_bearing_diameter,
                   h = prismatic_joint_nut_bearing_buffer
                     + eps);
          mov_z(prismatic_joint_nut_bearing_buffer)
            cylinder(d = inside_bearing_diameter,
                     h = bearing_thickness / 3);
        }
      }
    }

    // pieces to remove
    hash_if(show_cutouts)
    union() {
      // nut cutout
      mov_x(bb_xmax(local_nut_region_bb))
      {
        rot_y(-90)
        cylinder(r = M_nut_outer_radius(prismatic_joint_screw_size)
                   + prismatic_joint_nut_clearance / cos(30),
                 h = M_nut_height(prismatic_joint_screw_size)
                   + 2 * prismatic_joint_nut_clearance,
                 $fn = 6);

        mov_y(M_nut_inner_diameter(prismatic_joint_screw_size) / 2
            + prismatic_joint_nut_clearance)
        rot_z(180)
        cube([
            M_nut_height(prismatic_joint_screw_size)
              + 2 * prismatic_joint_nut_clearance,
            M_nut_inner_diameter(prismatic_joint_screw_size)
              + 2 * prismatic_joint_nut_clearance,
            bb_zdim(local_nut_region_bb)
          ]);
      }

      // screw cutout
      mov_x(bb_xdim(prismatic_joint_bb) + eps)
      rot_y(-90)
      cylinder(d = prismatic_joint_screw_size
                 + 2 * prismatic_joint_screw_clearance,
               h = prismatic_joint_screw_depth
                 + eps);
    }
  }
}

module prismatic_joint_sacrificial_bridging() {
  mov_x(
      bb_xdim(prismatic_joint_bb) / 2
        - bb_xdim(bearing_bb) / 3
        - prismatic_joint_nut_bearing_buffer
        - 2 * prismatic_joint_nut_clearance
        - M_nut_height(prismatic_joint_screw_size)
    )
    rot_y(-90)
    cylinder(d = 0.75 * bb_zdim(prismatic_joint_bb),
             h = layer_height,
             center = false);
}

module needle_coupler(show_cutouts = false) {
  // diameter inside of the bearing center
  inside_bearing_diameter = bearing_inner_diameter
                          - 2 * bearing_inner_clearance;

  // diameter of the fat portion of this part
  fat_diameter = inside_bearing_diameter
                 + 2 * needle_coupler_bearing_growth;

  // diameter when going through the L bracket in-between space
  bracket_diameter = L_bracket_inbetween_space
                   - 2 * needle_coupler_bracket_clearance;

  // distance required to shrink the bracket at a 45 degree angle
  bracket_shrink_distance = fat_diameter - bracket_diameter;

  fat_length =
      bearing_to_bracket_distance          // full distance
        - needle_coupler_screw_head_buffer // growth region
        - bracket_shrink_distance          // distance from fat to skinny
        - needle_coupler_bracket_clearance // how early to be skinny
        ;

  echo(distance_behind_screw = fat_length
                             - M_screw_head_height(prismatic_joint_screw_size));
  echo(bracket_through_diameter = bracket_diameter);
  assert(fat_length >= M_screw_head_height(prismatic_joint_screw_size)
                       + needle_coupler_screw_head_buffer);

  mov_x(- bb_xdim(needle_coupler_bb) / 2)
  difference() {
    // main body
    color(printed_color_1)
    rot_y(90)
    union() {
      cylinder(d = inside_bearing_diameter,
               h = bearing_thickness / 3
                 + eps);
      mov_z(bearing_thickness / 3) {
        cylinder(d1 = inside_bearing_diameter,
                 d2 = fat_diameter,
                 h = needle_coupler_screw_head_buffer
                   + eps);
        mov_z(needle_coupler_screw_head_buffer) {
          cylinder(d = fat_diameter,
                   h = fat_length
                     + eps);
          mov_z(fat_length) {
            cylinder(d1 = fat_diameter,
                     d2 = bracket_diameter,
                     h = bracket_shrink_distance
                       + eps);
            mov_z(bracket_shrink_distance) {
              cylinder(d = bracket_diameter,
                       h = 2 * needle_coupler_bracket_clearance
                         + L_bracket_thickness);
            }
          }
        }
      }
    }

    // stuff to subtract
    hash_if(show_cutouts)
    union() {
      // screw shaft
      mov_x(-eps)
        rot_y(90)
        cylinder(d = prismatic_joint_screw_size
                   + 2 * prismatic_joint_screw_clearance,
                 h = bearing_thickness / 3
                   + needle_coupler_screw_head_buffer
                   + 3 * eps);

      // room for the screw head
      mov_x(bearing_thickness / 3
          + needle_coupler_screw_head_buffer)
      {
        head_hole_diameter =
            M_screw_head_diameter(prismatic_joint_screw_size)
              + 2 * needle_coupler_screw_head_clearance;
        hull() {
          union() {
            rot_y(90)
              cylinder(d = head_hole_diameter,
                       h = fat_length);
            cube_pcp(
                fat_length,
                head_hole_diameter,
                head_hole_diameter
              );
          }
          mov_xz(fat_length + bracket_shrink_distance,
                 bracket_diameter / 2)
          cube(0.1 * [1, 1, 1], center = true);
        }
      }

      // room for a hex wrench
      //mov_x(- eps)
      //rot_y(90)
      //cylinder(r = M_screw_hex_radius(prismatic_joint_screw_size)
      //           + needle_coupler_hex_wrench_clearance,
      //         h = bb_xdim(needle_coupler_bb) + 2 * eps);
    }
  }
}

module needle_prismatic_screws() {
  color(nut_color)
    translate([
        bb_xmin(bearing_bb)
          - prismatic_joint_nut_bearing_buffer
          - prismatic_joint_nut_clearance,
        bb_ycenter(prismatic_joint_bb),
        bb_zcenter(prismatic_joint_bb)
      ])
    rot_y(-90)
    M_nut(prismatic_joint_screw_size, simplify = simplify_fasteners);

  color(screw_color)
    translate([
        bb_xmax(bearing_bb)
          + needle_coupler_screw_head_buffer,
        bb_ycenter(needle_coupler_bb),
        bb_zcenter(needle_coupler_bb)
      ])
    mov_x(M_screw_head_height(prismatic_joint_screw_size))
    rot_y(-90)
    M_screw(prismatic_joint_screw_size, needle_coupler_screw_length,
            simplify = simplify_fasteners);
}
