//
//  Node.swift
//  Algos
//
//  Created by Vikram Bisht on 10/10/16.
//  Copyright © 2016 anurag. All rights reserved.
//

import Foundation

class Node<Element:Equatable>:NilLiteralConvertible {
    var value:Element?
    var next:Node<Element>?
    required init(nilLiteral: ()) {
        value = nil
        next = nil
    }

}
