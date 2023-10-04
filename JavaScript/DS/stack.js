/**
 * Class representing a Stack data structure.
 */
class Stack {
    /**
     * Create an empty stack.
     */
    constructor() {
      this.items = [];
    }
  
    /**
     * Push an item onto the stack.
     * @param {any} item - The item to be pushed onto the stack.
     */
    push(item) {
      this.items.push(item);
    }
  
    /**
     * Pop and return the top item from the stack.
     * @returns {any} - The top item from the stack.
     */
    pop() {
      if (!this.isEmpty()) {
        return this.items.pop();
      } else {
        return null;
      }
    }
  
    /**
     * Check if the stack is empty.
     * @returns {boolean} - True if the stack is empty, otherwise false.
     */
    isEmpty() {
      return this.items.length === 0;
    }
  
    /**
     * Return the top item from the stack without removing it.
     * @returns {any} - The top item from the stack.
     */
    peek() {
      if (!this.isEmpty()) {
        return this.items[this.items.length - 1];
      } else {
        return null;
      }
    }
  
    /**
     * Return the size (number of items) of the stack.
     * @returns {number} - The size of the stack.
     */
    size() {
      return this.items.length;
    }
  }
  
  module.exports = Stack;
  
  // Example usage:
  if (require.main === module) {
    const stack = new Stack();
    stack.push(1);
    stack.push(2);
    stack.push(3);
    console.log("Stack:", stack.items);
    console.log("Peek:", stack.peek());
    console.log("Pop:", stack.pop());
    console.log("Stack Size:", stack.size());
  }
  