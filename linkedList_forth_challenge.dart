class Node {
  int item;
  Node? next;
  Node({required this.item});
}

class LinkedList {
  Node? head;

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

  void removeDuplicates(int item) {
    Node? current = head;
    Node? last = null;

    while (current != null) {
      if (current.item == item) {
        if (last == null)
          head = current.next;
        else
          last.next = current.next;
      } else
        last = current;

      current = current.next;
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
  LinkedList newList = LinkedList();
  newList.addNode(1);
  newList.addNode(3);
  newList.addNode(3);
  newList.addNode(4);
  newList.addNode(4);

  newList.removeDuplicates(3);
  newList.printList();
}
