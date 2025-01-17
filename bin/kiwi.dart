void main() {
  var x = [10, 15, 20, 30, 35, 40, 45, 50];
  var r = findMissingNumber(x);
  print(r);
}

int? findMissingNumber(List<int> input) {
  for (var i = 0; i < input.length; i++) {
    if (i == 0) {
      continue;
    }
    var current = input[i];
    var previous = input[i - 1];
    var diff = current - previous;
    var expected = current + diff;
    var nextNum = input[i + 1];
    if (expected != nextNum) {
      return expected;
    }
  }
  return null;
}

// To find missing numbers from a given sequence:-
// given sequence: [-3,1,__,9,13,__21]
// find the common difference between two consecutive numbers
// eg. 1-(-3)= 4
//     13-9= 4
// The common difference in the given sequence is 4
// Now, add 4 in the number that comes before the missing number to obtain the value of the same
// eg. 1+4= 5 & 13+4= 17, hence the sequence is completed : [-3, 1, 5, 9, 13, 17, 21]