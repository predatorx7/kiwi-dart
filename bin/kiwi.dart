void main() {
  var l = lcm(27);
  print(l);
}

int lcm(int n) {
  for (var i = 2; i <= n; i++) {
    if (n % i == 0) {
      return i;
    }
  }
  return n;
}
