#ifndef MessageParser_h
#define MessageParser_h

#include "Array.h"

/** Parses messages, typically from the serial port
 *
 * Parses messages by feeding it one character at a time from any source.  Once
 * a completed message is received, the appropriate callback will be called (if
 * set).
 *
 * For each received message type, there can be a single callback function
 * registered.  The callback function parameters will depend on the type of
 * message or command received.
 */
class MessageParser {
public:
  using Callback_noargs = void();
  using Callback_bool   = void(bool);
  using Callback_S      = void(int32_t);
  using Callback_U      = void(uint32_t);
  using Callback_SU     = void(int32_t, uint32_t);
  enum class OutputType { TEXT, BINARY };

public:
  /** Parse one more character.
   * 
   * Returns true if this was the end of an input message.
   */
  bool append(char input);

  // callbacks
  void setHelpCallback(Callback_noargs *cb) { _help_callback = cb; }
  void setSettingsCallback(Callback_noargs *cb) { _settings_callback = cb; }
  void setStateCallback(Callback_noargs *cb) { _state_callback = cb; }
  void setSendBinaryCallback(Callback_bool *cb) { _send_binary_callback = cb; }

private:
  enum class ParseState {
    WAITING,                // waiting for _msg_begin
    MSG_BEGIN,              // after seeing _msg_begin
    PARSING_TEXT_MESSAGE,   // after the second character, we will know if it's
    PARSING_BINARY_MESSAGE, // a text or binary message.
  };

  // size of payload for the given binary message type.
  int payload_size(char message_type) const;

  void parse_text(const char *data);

  void parse_binary(const char *data);

private:
  // parsing internal variables
  Array<char, 100> _buffer;  // message buffer for current message, without
                             // start and end characters.
  const char _msg_begin   = '<';
  const char _msg_end     = '>';
  const char _msg_bin_id  = 'B';
  OutputType _output_type = OutputType::TEXT;
  ParseState _parse_state = ParseState::WAITING;

  // callbacks
  Callback_noargs *_help_callback        = nullptr;
  Callback_noargs *_settings_callback    = nullptr;
  Callback_noargs *_state_callback       = nullptr;
  Callback_bool   *_send_binary_callback = nullptr;
};

#endif // MessageParser_h