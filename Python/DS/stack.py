class Stack:
    """
    Stack class represents a stack data structure.
    It contains methods for pushing, popping, checking if it's empty,
    peeking at the top element, and getting the size of the stack.
    """
    def __init__(self):
        self.items = []

    def push(self, item):
        """
        Push an item onto the stack.
        """
        self.items.append(item)

    def pop(self):
        """
        Pop and return the top item from the stack.
        """
        if not self.is_empty():
            return self.items.pop()
        else:
            return None

    def is_empty(self):
        """
        Check if the stack is empty.
        """
        return len(self.items) == 0

    def peek(self):
        """
        Return the top item from the stack without removing it.
        """
        if not self.is_empty():
            return self.items[-1]
        else:
            return None

    def size(self):
        """
        Return the size (number of items) of the stack.
        """
        return len(self.items)

# Example usage:
if __name__ == "__main__":
    stack = Stack()
    stack.push(1)
    stack.push(2)
    stack.push(3)
    print("Stack:", stack.items)
    print("Peek:", stack.peek())
    print("Pop:", stack.pop())
    print("Stack Size:", stack.size())
