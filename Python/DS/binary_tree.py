class TreeNode:
    """
    TreeNode class represents a node in a binary tree.
    Each node contains data, a left child, and a right child.
    """
    def __init__(self, data):
        self.data = data
        self.left = None
        self.right = None

class BinaryTree:
    """
    BinaryTree class represents a binary tree data structure.
    It contains methods for printing the tree in preorder,
    inorder, and postorder traversals.
    """
    def __init__(self, root):
        self.root = TreeNode(root)

    def print_tree(self, traversal_type):
        """
        Print the binary tree using the specified traversal type (preorder, inorder, postorder).
        """
        if traversal_type == "preorder":
            return self.preorder_traversal(self.root, "")
        elif traversal_type == "inorder":
            return self.inorder_traversal(self.root, "")
        elif traversal_type == "postorder":
            return self.postorder_traversal(self.root, "")
        else:
            return "Invalid traversal type"

    def preorder_traversal(self, start, traversal):
        """
        Perform preorder traversal of the binary tree.
        """
        if start:
            traversal += (str(start.data) + " ")
            traversal = self.preorder_traversal(start.left, traversal)
            traversal = self.preorder_traversal(start.right, traversal)
        return traversal

    def inorder_traversal(self, start, traversal):
        """
        Perform inorder traversal of the binary tree.
        """
        if start:
            traversal = self.inorder_traversal(start.left, traversal)
            traversal += (str(start.data) + " ")
            traversal = self.inorder_traversal(start.right, traversal)
        return traversal

    def postorder_traversal(self, start, traversal):
        """
        Perform postorder traversal of the binary tree.
        """
        if start:
            traversal = self.postorder_traversal(start.left, traversal)
            traversal = self.postorder_traversal(start.right, traversal)
            traversal += (str(start.data) + " ")
        return traversal

# Example usage:
if __name__ == "__main__":
    tree = BinaryTree(1)
    tree.root.left = TreeNode(2)
    tree.root.right = TreeNode(3)
    tree.root.left.left = TreeNode(4)
    tree.root.left.right = TreeNode(5)
    print("Preorder Traversal:", tree.print_tree("preorder"))
    print("Inorder Traversal:", tree.print_tree("inorder"))
    print("Postorder Traversal:", tree.print_tree("postorder"))
