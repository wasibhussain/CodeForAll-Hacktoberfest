/**
 * Class representing a Node in a Binary Tree.
 */
class TreeNode {
    /**
     * Create a new TreeNode.
     * @param {any} data - The data to be stored in the TreeNode.
     */
    constructor(data) {
      this.data = data;
      this.left = null;
      this.right = null;
    }
  }
  
  /**
   * Class representing a Binary Tree data structure.
   */
  class BinaryTree {
    /**
     * Create a new Binary Tree with a root node.
     * @param {any} root - The data for the root node.
     */
    constructor(root) {
      this.root = new TreeNode(root);
    }
  
    /**
     * Perform preorder traversal of the binary tree.
     * @param {TreeNode} start - The starting node for traversal.
     * @param {string} traversal - The current traversal string.
     * @returns {string} - The final traversal string.
     */
    preorderTraversal(start, traversal) {
      if (start) {
        traversal += start.data + ' ';
        traversal = this.preorderTraversal(start.left, traversal);
        traversal = this.preorderTraversal(start.right, traversal);
      }
      return traversal;
    }
  
    /**
     * Perform inorder traversal of the binary tree.
     * @param {TreeNode} start - The starting node for traversal.
     * @param {string} traversal - The current traversal string.
     * @returns {string} - The final traversal string.
     */
    inorderTraversal(start, traversal) {
      if (start) {
        traversal = this.inorderTraversal(start.left, traversal);
        traversal += start.data + ' ';
        traversal = this.inorderTraversal(start.right, traversal);
      }
      return traversal;
    }
  
    /**
     * Perform postorder traversal of the binary tree.
     * @param {TreeNode} start - The starting node for traversal.
     * @param {string} traversal - The current traversal string.
     * @returns {string} - The final traversal string.
     */
    postorderTraversal(start, traversal) {
      if (start) {
        traversal = this.postorderTraversal(start.left, traversal);
        traversal = this.postorderTraversal(start.right, traversal);
        traversal += start.data + ' ';
      }
      return traversal;
    }
  
    /**
     * Print the binary tree using the specified traversal type.
     * @param {string} traversalType - The type of traversal (preorder, inorder, postorder).
     * @returns {string} - The traversal result.
     */
    printTree(traversalType) {
      if (traversalType === 'preorder') {
        return this.preorderTraversal(this.root, '');
      } else if (traversalType === 'inorder') {
        return this.inorderTraversal(this.root, '');
      } else if (traversalType === 'postorder') {
        return this.postorderTraversal(this.root, '');
      } else {
        return 'Invalid traversal type';
      }
    }
  }
  
  module.exports = BinaryTree;
  
  // Example usage:
  if (require.main === module) {
    const tree = new BinaryTree(1);
    tree.root.left = new TreeNode(2);
    tree.root.right = new TreeNode(3);
    tree.root.left.left = new TreeNode(4);
    tree.root.left.right = new TreeNode(5);
    console.log("Preorder Traversal:", tree.printTree("preorder"));
    console.log("Inorder Traversal:", tree.printTree("inorder"));
    console.log("Postorder Traversal:", tree.printTree("postorder"));
  }
  