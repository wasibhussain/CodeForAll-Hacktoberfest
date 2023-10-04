from collections import deque

class Queue:
    """
    Queue class represents a queue data structure.
    It uses a deque from the collections module.
    It contains methods for enqueueing, dequeueing,
    checking if it's empty, and getting the size of the queue.
    """
    def __init__(self):
        self.items = deque()

    def enqueue(self, item):
        """
        Enqueue an item into the queue.
        """
        self.items.append(item)

    def dequeue(self):
        """
        Dequeue and return the front item from the queue.
        """
        if not self.is_empty():
            return self.items.popleft()
        else:
            return None

    def is_empty(self):
        """
        Check if the queue is empty.
        """
        return len(self.items) == 0

    def size(self):
        """
        Return the size (number of items) of the queue.
        """
        return len(self.items)

# Example usage:
if __name__ == "__main__":
    queue = Queue()
    queue.enqueue(1)
    queue.enqueue(2)
    queue.enqueue(3)
    print("Queue:", list(queue.items))
    print("Dequeue:", queue.dequeue())
    print("Queue Size:", queue.size())
