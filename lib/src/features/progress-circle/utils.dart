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
