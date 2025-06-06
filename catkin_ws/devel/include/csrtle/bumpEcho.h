// Generated by gencpp from file csrtle/bumpEcho.msg
// DO NOT EDIT!


#ifndef CSRTLE_MESSAGE_BUMPECHO_H
#define CSRTLE_MESSAGE_BUMPECHO_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace csrtle
{
template <class ContainerAllocator>
struct bumpEcho_
{
  typedef bumpEcho_<ContainerAllocator> Type;

  bumpEcho_()
    : t()
    , x1(0)
    , y1(0)
    , x2(0)
    , y2(0)
    , resp(false)  {
    }
  bumpEcho_(const ContainerAllocator& _alloc)
    : t()
    , x1(0)
    , y1(0)
    , x2(0)
    , y2(0)
    , resp(false)  {
  (void)_alloc;
    }



   typedef ros::Time _t_type;
  _t_type t;

   typedef int32_t _x1_type;
  _x1_type x1;

   typedef int32_t _y1_type;
  _y1_type y1;

   typedef int32_t _x2_type;
  _x2_type x2;

   typedef int32_t _y2_type;
  _y2_type y2;

   typedef uint8_t _resp_type;
  _resp_type resp;





  typedef boost::shared_ptr< ::csrtle::bumpEcho_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::csrtle::bumpEcho_<ContainerAllocator> const> ConstPtr;

}; // struct bumpEcho_

typedef ::csrtle::bumpEcho_<std::allocator<void> > bumpEcho;

typedef boost::shared_ptr< ::csrtle::bumpEcho > bumpEchoPtr;
typedef boost::shared_ptr< ::csrtle::bumpEcho const> bumpEchoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::csrtle::bumpEcho_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::csrtle::bumpEcho_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::csrtle::bumpEcho_<ContainerAllocator1> & lhs, const ::csrtle::bumpEcho_<ContainerAllocator2> & rhs)
{
  return lhs.t == rhs.t &&
    lhs.x1 == rhs.x1 &&
    lhs.y1 == rhs.y1 &&
    lhs.x2 == rhs.x2 &&
    lhs.y2 == rhs.y2 &&
    lhs.resp == rhs.resp;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::csrtle::bumpEcho_<ContainerAllocator1> & lhs, const ::csrtle::bumpEcho_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace csrtle

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::csrtle::bumpEcho_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::csrtle::bumpEcho_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::csrtle::bumpEcho_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::csrtle::bumpEcho_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::csrtle::bumpEcho_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::csrtle::bumpEcho_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::csrtle::bumpEcho_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4f39b12694464cc7a7e355caf0f0ec3c";
  }

  static const char* value(const ::csrtle::bumpEcho_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4f39b12694464cc7ULL;
  static const uint64_t static_value2 = 0xa7e355caf0f0ec3cULL;
};

template<class ContainerAllocator>
struct DataType< ::csrtle::bumpEcho_<ContainerAllocator> >
{
  static const char* value()
  {
    return "csrtle/bumpEcho";
  }

  static const char* value(const ::csrtle::bumpEcho_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::csrtle::bumpEcho_<ContainerAllocator> >
{
  static const char* value()
  {
    return "time t\n"
"int32 x1\n"
"int32 y1\n"
"int32 x2\n"
"int32 y2\n"
"bool resp\n"
"\n"
;
  }

  static const char* value(const ::csrtle::bumpEcho_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::csrtle::bumpEcho_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.t);
      stream.next(m.x1);
      stream.next(m.y1);
      stream.next(m.x2);
      stream.next(m.y2);
      stream.next(m.resp);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct bumpEcho_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::csrtle::bumpEcho_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::csrtle::bumpEcho_<ContainerAllocator>& v)
  {
    s << indent << "t: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.t);
    s << indent << "x1: ";
    Printer<int32_t>::stream(s, indent + "  ", v.x1);
    s << indent << "y1: ";
    Printer<int32_t>::stream(s, indent + "  ", v.y1);
    s << indent << "x2: ";
    Printer<int32_t>::stream(s, indent + "  ", v.x2);
    s << indent << "y2: ";
    Printer<int32_t>::stream(s, indent + "  ", v.y2);
    s << indent << "resp: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.resp);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CSRTLE_MESSAGE_BUMPECHO_H
