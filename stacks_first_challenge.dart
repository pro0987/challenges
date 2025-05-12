//challenge 1

void reverce(List list) {
  var reverceList = list.reversed;
  reverceList.forEach((item) {
    print(item);
  });
}

void main() {
  List myList = ['palstine', 'free ', 'free '];
  reverce(myList);
}
