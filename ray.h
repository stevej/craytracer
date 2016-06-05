#ifndef RAYH
#define RAYH

#include "vec3.h"

class ray {
public:
  ray() {}
  ray(const vec3& origin, const vec3& direction) {
    _origin = origin;
    _direction = direction;
  }

  vec3 origin() const {
    return _origin;
  }

  vec3 direction() const {
    return _direction;
  }

  vec3 _origin;
  vec3 _direction;
};
#endif
