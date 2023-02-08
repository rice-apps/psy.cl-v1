import 'dart:math' as math;
import 'vector.dart';

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

/// Returns the determinant of matrix with [v1] and [v2] as first and second columns respectively
double determinant(Vector2 v1, Vector2 v2) {
  return v1.x * v2.y - v1.y * v2.x;
}
