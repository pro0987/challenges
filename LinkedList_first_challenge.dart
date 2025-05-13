class Node {
  var item;
  Node? next;
  Node({required this.item, this.next});
}

class LinkedList {
  Node? head;

  void reverce(Node? current) {
    if (current == null || current.next == null) return;
    reverce(current.next);

    current.next?.next = current;
    current.next = null;
  }

  void printList(Node? head) {
    Node? current = head;
    while (current != null) {
      print(current.item);
      current = current.next;
    }
  }
}

void main() {
  Node node4 = Node(item: 4);
  Node node3 = Node(item: 3, next: node4);
  Node node2 = Node(item: 2, next: node3);
  Node node1 = Node(item: 1, next: node2);

  LinkedList newlinkedList = LinkedList();
  //before reverce
  newlinkedList.printList(node1); //The first node is the head.
  print('-------------------');
  //after reverce
  newlinkedList.reverce(node1);
  newlinkedList.printList(node4); //The fourth node became the head
}
