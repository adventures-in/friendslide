/// An odd little duck with a very specific purpose (calculating proximity of
/// puzzle pieces). This is not a normal vector.
class Vec {
  Vec(this.x, this.y);
  final int x;
  final int y;

  Vec operator -(Vec other) => Vec(x - other.x, y - other.y);
  Vec get abs => Vec(x.abs(), y.abs());
  int get len => x + y;
}
