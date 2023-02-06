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

/// Returns the radian value of [days] on a circle with [circumference] circumference where 12 o'clock = 0 rad
double toRadians(int days, int circumference) {
  return 2 * math.pi * (days / circumference) - math.pi / 2;
}
