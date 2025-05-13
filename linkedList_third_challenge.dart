// ignore_for_file: public_member_api_docs, sort_constructors_first
class Node {
  var item;
  Node? next;
  Node({required this.item, this.next});
}

class LinkeedList {
  Node? head;

  void reverce() {
    Node? last = null;
    Node? current = head;
    Node? nextNode;

    while (current != null) {
      nextNode = current.next;
      current.next = last;
      last = current;
      current = nextNode;
    }
    head = last;
  }

  void addNode(int item) {
    Node newNode = Node(item: item);

    if (head == null)
      head = newNode;
    else {
      Node? current = head;
      while (current!.next != null) {
        current = current.next;
      }
      current.next = newNode;
    }
  }

  void printList() {
    Node? current = head;
    while (current != null) {
      print(current.item);
      current = current.next;
    }
  }
}

void main() {
  LinkeedList newList = LinkeedList();
  newList.addNode(1);
  newList.addNode(2);
  newList.addNode(3);
  newList.addNode(4);

  newList.reverce();
  newList.printList();
}
