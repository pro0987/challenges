class Node {
  var item;
  Node? next;
  Node({required this.item, this.next});
}

class LinkedList {
  Node? findMid(Node? head) {
    if (head == null) return null;

    int length = 0;
    Node? temp = head;

    while (temp != null) {
      length++;
      temp = temp.next;
    }

    int midIndex = (length / 2).toInt();
    temp = head;
    for (int i = 0; i < midIndex; i++) temp = temp?.next;

    return temp;
  }

  void printList(Node? head) {
    Node? current = head;
    while (current != null) {
      print('${current.item}');
      current = current.next;
    }
  }
}

void main() {
  Node node3 = Node(item: 'life');
  Node node2 = Node(item: 'love', next: node3);
  Node node1 = Node(item: 'gaza', next: node2);

  LinkedList linkedList = LinkedList();

  linkedList.printList(node1);

  //find mid
  Node? mid = linkedList.findMid(node1);
  print('Mid note is ${mid?.item}');
}
