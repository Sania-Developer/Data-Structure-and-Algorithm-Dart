import 'dart:collection';

void main(List<String> args) {
  print("Creating a LinkedList of type Node1...");
  LinkedList<Node1> linkedList = LinkedList();

  Node1 node1 = Node1(1);
  Node1 node2 = Node1(2);
  Node1 node3 = Node1(3);
  Node1 node4 = Node1(4);
  Node1 node5 = Node1(5);
  Node1 node6 = Node1(6);

  print("Adding nodes to the linked list...");
  linkedList.add(node1);
  linkedList.add(node2);
  linkedList.add(node3);
  linkedList.add(node4);
  linkedList.add(node5);
  linkedList.addFirst(node6);

  print("LinkedList after adding nodes:");
  for (var element in linkedList) {
    print("Node data: ${element.data}");
  }

  print("Removing the last and first nodes...");
  linkedList.remove(linkedList.last);
  linkedList.remove(linkedList.first);

  print("LinkedList after removing last and first nodes:");
  for (var element in linkedList) {
    print("Node data: ${element.data}");
  }

  print("Removing node with data 3...");
  linkedList.remove(node3);

  print("LinkedList after removing node with data 3:");
  for (var element in linkedList) {
    print("Node data: ${element.data}");
  }

  print("Element at index 2: ${linkedList.elementAt(2).data}");
  print("LinkedList length: ${linkedList.length}");

  print("Creating a Single Linked List...");
  SingleLL singleLL = SingleLL();

  print("Adding nodes to the Single Linked List...");
  singleLL.addAtFirst(4);
  singleLL.addAtFirst(3);
  singleLL.addAtFirst(2);
  singleLL.addAtEnd(1);
  singleLL.addAtEnd(0);

  print("Deleting nodes from the Single Linked List...");
  singleLL.deleteAtFirst();
  singleLL.deleteAtEnd();

  // New LinkedList after removing first and last Node is ( 3 -> 4 -> 1 ) 

  print("Single Linked List size: ${singleLL.getSize()}");

  print("Reversing the Single Linked List...");
  singleLL.reverseList();

  print("Reversed Single Linked List:");
  Node? currentNode = singleLL.head;
  while (currentNode != null) {
    print("Node data: ${currentNode.data}");
    currentNode = currentNode.next;
  }
}

class SingleLL {
  Node? head;
  int size = 0;

  addAtFirst(int data) {
    Node newNode = Node(data, next: head);
    head = newNode;
    size++;
  }

  addAtEnd(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      size++;
    } else {
      Node? currentNode = head;
      while (currentNode?.next != null) {
        currentNode = currentNode?.next;
      }
      currentNode?.next = newNode;
      size++;
    }
  }

  deleteAtFirst() {
    size--;
    if (head != null) {
      head = head?.next;
    }
  }

  deleteAtEnd() {
    Node? scndLastNode = head;
    Node? lastNode = head!.next;
    if (head == null) {
      print('This list is empty');
    }
    size--;
    if (head?.next == null) {
      head = null;
    } else {
      while (lastNode?.next != null) {
        lastNode = lastNode?.next;
        scndLastNode = scndLastNode?.next;
      }
      scndLastNode?.next = null;
    }
  }

  getSize() {
    return size;
  }

  reverseList() {
    Node? prev = null;
    Node? current = head;
    Node? next;
    while (current != null) {
      next = current.next;
      current.next = prev;
      prev = current;
      current = next;
    }
    head = prev;
  }
}

class Node {
  int data;
  Node? next;

  Node(this.data, {this.next});
}

class Node1 extends LinkedListEntry<Node1> {
  int data;

  Node1(this.data);
}
