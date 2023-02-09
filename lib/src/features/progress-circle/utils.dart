import 'dart:math' as math;

/// Returns a boolean representing whether or not [loc] falls between [start] and [end] on a circle with [circumference] circumference
bool isInArc(int start, int end, int loc, int circumference) {
  if (start > end) {
    return (loc >= start && loc <= circumference) || (loc >= 0 && loc < end);
  } else {
    return (loc >= start && loc < end);
  }
}

/// Returns the distance between [start] and [end] on a circle with circumference [circumference]
int getDistance(int start, int end, int circumference) {
  return (end - start) % circumference;
}

/// Returns the radian value of [day] on a circle with [circumference] circumference where 12 o'clock = 0 rad
double toRadians(int day, int circumference) {
  return 2 * math.pi * (day / circumference) - math.pi / 2;
}

/// Returns the day value at [angle] (radians) on a circle with given [circumference]
int toDays(double angle, int circumference) {
  return (((circumference * ((angle + math.pi / 2) / (2 * math.pi)) - 1)) %
              circumference +
          1)
      .toInt();
}

/// Returns the dot product of two n-dimensional vectors
double dot(List<double> v1, List<double> v2) {
  assert(v1.length == v2.length);
  double sum = 0;
  for (int i = 0; i < v1.length; i++) {
    sum += v1[i] * v2[i];
  }
  return sum;
}

/// Returns the magnitude of an n-dimensional vector
double magnitude(List<double> v) {
  double sum = 0;
  for (int i = 0; i < v.length; i++) {
    sum += math.pow(v[i], 2);
  }
  return math.sqrt(sum);
}
