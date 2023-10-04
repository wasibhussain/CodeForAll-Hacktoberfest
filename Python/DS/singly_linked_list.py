class Node:
    """
    Node class represents an element in the linked list.
    Each node contains data and a reference to the next node.
    """
    def __init__(self, data):
        self.data = data
        self.next = None

class LinkedList:
    """
    LinkedList class represents a singly linked list.
    It contains methods for appending and displaying elements in the list.
    """
    def __init__(self):
        self.head = None

    def append(self, data):
        """
        Append a new node with the given data to the end of the list.
        """
        new_node = Node(data)
        if not self.head:
            self.head = new_node
            return
        current = self.head
        while current.next:
            current = current.next
        current.next = new_node

    def display(self):
        """
        Display the elements of the linked list.
        """
        current = self.head
        while current:
            print(current.data, end=" -> ")
            current = current.next
        print("None")

# Example usage:
if __name__ == "__main__":
    linked_list = LinkedList()
    linked_list.append(1)
    linked_list.append(2)
    linked_list.append(3)
    linked_list.display()
