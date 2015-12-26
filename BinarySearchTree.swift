//
//  binary search tree in swift
//
//
//  Created by http://waynewbishop.com/swift/binary-search-trees/   2015
//
//
public class AVLTree<T: Comparable>
{
    var key: T?
    var left: AVLTree?
    var right: AVLTree?
    
    //add item based on its value
    func addNode(key: T)
    {
        
        //check for the head node
        if (self.key == nil)
        {
            self.key = key
            return
        }
        //check the left side of the tree
        if (key < self.key)
        {
            if (self.left != nil)
            {
                left!.addNode(key)
            }
            else
            {
                //create a new left node
                var leftChild : AVLTree = AVLTree()
                leftChild.key = key
                self.left = leftChild
            }
        }//end if
        //check the left side of the tree
        if (key > self.key)
        {
            if (self.right != nil)
            {
                right!.addNode(key)
            }
            else
            {
                //create a new right node
                var rightChild : AVLTree = AVLTree()
                rightChild.key = key
                self.right = rightChild
            }
        }//end if
    }//end function 
} //end class - See more at: http://waynewbishop.com/swift/binary-search-trees/#sthash.wdSsEsnu.dpuf