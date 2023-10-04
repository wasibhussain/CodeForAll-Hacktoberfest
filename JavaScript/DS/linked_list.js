/**
 * Class representing a Node in a Linked List.
 */
class Node {
    /**
     * Create a new Node.
     * @param {any} data - The data to be stored in the Node.
     */
    constructor(data) {
      this.data = data;
      this.next = null;
    }
  }
  
  /**
   * Class representing a Singly Linked List.
   */
  class LinkedList {
    /**
     * Create an empty LinkedList.
     */
    constructor() {
      this.head = null;
    }
  
    /**
     * Append a new node with the given data to the end of the list.
     * @param {any} data - The data to be added to the list.
     */
    append(data) {
      const newNode = new Node(data);
      if (!this.head) {
        this.head = newNode;
        return;
      }
      let current = this.head;
      while (current.next) {
        current = current.next;
      }
      current.next = newNode;
    }
  
    /**
     * Display the elements of the linked list.
     */
    display() {
      let current = this.head;
      while (current) {
        console.log(current.data);
        current = current.next;
      }
    }
  }
  
  module.exports = LinkedList;
  
  // Example usage:
  if (require.main === module) {
    const linkedList = new LinkedList();
    linkedList.append(1);
    linkedList.append(2);
    linkedList.append(3);
    linkedList.display();
  }
  