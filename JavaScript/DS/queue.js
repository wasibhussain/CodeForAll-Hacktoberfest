/**
 * Class representing a Queue data structure.
 */
class Queue {
    /**
     * Create an empty queue.
     */
    constructor() {
      this.items = [];
    }
  
    /**
     * Enqueue an item into the queue.
     * @param {any} item - The item to be enqueued.
     */
    enqueue(item) {
      this.items.push(item);
    }
  
    /**
     * Dequeue and return the front item from the queue.
     * @returns {any} - The front item from the queue.
     */
    dequeue() {
      if (!this.isEmpty()) {
        return this.items.shift();
      } else {
        return null;
      }
    }
  
    /**
     * Check if the queue is empty.
     * @returns {boolean} - True if the queue is empty, otherwise false.
     */
    isEmpty() {
      return this.items.length === 0;
    }
  
    /**
     * Return the size (number of items) of the queue.
     * @returns {number} - The size of the queue.
     */
    size() {
      return this.items.length;
    }
  }
  
  module.exports = Queue;
  
  // Example usage:
  if (require.main === module) {
    const queue = new Queue();
    queue.enqueue(1);
    queue.enqueue(2);
    queue.enqueue(3);
    console.log("Queue:", queue.items);
    console.log("Dequeue:", queue.dequeue());
    console.log("Queue Size:", queue.size());
  }
  