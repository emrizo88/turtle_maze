# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from csrtle/aendEcho.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy

class aendEcho(genpy.Message):
  _md5sum = "6caf0aa0b7507bce1ec993aba0f1642b"
  _type = "csrtle/aendEcho"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """time t
int32 x
int32 y
bool resp

"""
  __slots__ = ['t','x','y','resp']
  _slot_types = ['time','int32','int32','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       t,x,y,resp

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(aendEcho, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.t is None:
        self.t = genpy.Time()
      if self.x is None:
        self.x = 0
      if self.y is None:
        self.y = 0
      if self.resp is None:
        self.resp = False
    else:
      self.t = genpy.Time()
      self.x = 0
      self.y = 0
      self.resp = False

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_2I2iB().pack(_x.t.secs, _x.t.nsecs, _x.x, _x.y, _x.resp))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.t is None:
        self.t = genpy.Time()
      end = 0
      _x = self
      start = end
      end += 17
      (_x.t.secs, _x.t.nsecs, _x.x, _x.y, _x.resp,) = _get_struct_2I2iB().unpack(str[start:end])
      self.resp = bool(self.resp)
      self.t.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_2I2iB().pack(_x.t.secs, _x.t.nsecs, _x.x, _x.y, _x.resp))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.t is None:
        self.t = genpy.Time()
      end = 0
      _x = self
      start = end
      end += 17
      (_x.t.secs, _x.t.nsecs, _x.x, _x.y, _x.resp,) = _get_struct_2I2iB().unpack(str[start:end])
      self.resp = bool(self.resp)
      self.t.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I2iB = None
def _get_struct_2I2iB():
    global _struct_2I2iB
    if _struct_2I2iB is None:
        _struct_2I2iB = struct.Struct("<2I2iB")
    return _struct_2I2iB
