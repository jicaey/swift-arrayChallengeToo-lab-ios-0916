//
//  ViewController.swift
//  ArrayChallengeDeuce2
//
//  Created by James Campagno on 7/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // This represents our deliLine.
    var deliLine: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
   // Adds Names to deliLine Array moving BC and MR - front of line. Print message for Line postion.
    func addNameToDeliLine(name: String) -> String {
        if name == "Billy Crystal" {
            deliLine.insert(name, atIndex: 0)
            return "Welcome Billy! You can sit wherever you like."
        } else if name == "Meg Ryan" {
            deliLine.insert(name, atIndex: 0)
            return "Welcome Meg! You can sit wherever you like."
        }else if deliLine.count == 0 {
            deliLine.append(name)
            return "Welcome \(name), you're first in line!"
        } else {
            deliLine.append(name)
            return "Welcome \(name), you're number \(deliLine.count) in line."
        }
        
    }
    
    func nowServing() -> String {
        if deliLine.isEmpty {
            return "There is no one to be served."
        } else {
            let next = ("Now serving \(deliLine[0])!")
            deliLine.removeAtIndex(0)
            return next
        }
    }

    
    func deliLineDescription() -> String {
        switch deliLine.count {
        case 0:
            return "The line is currently empty."
        default:
            var final = "The line is:\n"
            for (index, name) in deliLine.enumerate() {
                switch index {
                case deliLine.count - 1:
                    final.appendContentsOf("\(index+1). \(name)")
                default:
                    final.appendContentsOf("\(index+1). \(name)\n")
                }
            }
            return final
        }
    }
    
}



