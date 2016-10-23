//
//  BinaryTreeNode.swift
//  Algos
//
//  Created by Vikram Bisht on 10/13/16.
//  Copyright © 2016 anurag. All rights reserved.
//

import Foundation

class BinaryTreeNode<Element:Equatable> {
    ////
    var value:Element
    var children:Array<BinaryTreeNode> = [] //add all the childern of a node here
    weak var parent:BinaryTreeNode?
    init(value:Element){
        self.value = value
    }
}