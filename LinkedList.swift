//
//  LinkedList.swift
//  Algos
//
//  Created by Vikram Bisht on 10/10/16.
//  Copyright © 2016 anurag. All rights reserved.
//

import Foundation
import UIKit

class LinkedList<Element:Equatable>:ArrayLiteralConvertible {
    var head:Node<Element>
    
    init(){
        head = nil
    }
    init(head:Node<Element>){
        self.head = head
    }
    required init(arrayLiteral elements: Element...) {
        head = Node<Element>(nilLiteral: ())
        for element in elements{
            if head.value == nil{
                head.value = element
            }else{
                var currentNode = head
                while currentNode.next != nil{
                    currentNode = currentNode.next!
                }
                let newNode = Node<Element>(nilLiteral:())
                newNode.value = element
                currentNode.next = newNode
            }
            
            
        }
    }
    
    func insert(value:Element){
        //check if head is empty or not 
        if head.value == nil{
            
            head.value = value
        }else{
            //get the last node of the list
            var currentNode = head
            while currentNode.next != nil{
                currentNode  = currentNode.next!
            }
            let newNode = Node<Element>(nilLiteral: ())
            newNode.value = value
            currentNode.next = newNode
        }
        
    }
    func printAll(){
        var currentNode = head
        print("this is the value \(head.value!)")
        while currentNode.value != nil && currentNode.next != nil{
            currentNode = currentNode.next!
            print("this is the value \(currentNode.value!)")

        }
    }
    
    func remove(value:Element){
        // check if value is at the head 
        if head.value == value{
            head = head.next!
        }else{
            //check if theis inside the list 
            var currentNode = head
            var previousNode = Node<Element>(nilLiteral: ())
            while currentNode.value != value && currentNode.next != nil{
                previousNode = currentNode
                currentNode = currentNode.next!
            }
            if currentNode.value == value{
                if currentNode.next != nil{
                    previousNode.next = currentNode.next
                }else{
                    previousNode.next = nil
                }
            }
        }
    }
    
    func printMiddleNodeValue(){
        var currentNode = head
        var currentNode1 = head
        while currentNode1.value != nil && currentNode1.next?.next != nil{
            currentNode = currentNode.next!
            currentNode1 = currentNode1.next!.next!
        }
        print("the middle node is \(currentNode.value)")
    }
    
    func printNodeAtOneThirdLength(){
        var currentNode = head
        var currentNode1 = head
        while currentNode1.value != nil && currentNode1.next?.next?.next != nil{
            currentNode = currentNode.next!
            currentNode1 = (currentNode1.next?.next?.next!)!
        }
        print("the  node is \(currentNode.value)")
    }
    func reverseLinkedList(){
        UITableView
    }

}