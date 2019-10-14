int shapeArea(int n) {
    return n == 1 ? 1 : shapeArea(n - 1) + (4 * (n - 1));
}
