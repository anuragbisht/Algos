//
//  ViewController.swift
//  Algos
//
//  Created by Vikram Bisht on 10/10/16.
//  Copyright © 2016 anurag. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var list:LinkedList = [1,2,3,4,5,6,7,8,9,10]
        list.printAll()
        list.printMiddleNodeValue()
        list.printNodeAtOneThirdLength()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

