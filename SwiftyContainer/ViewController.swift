//
//  ViewController.swift
//  SwiftableContainer
//
//  Created by Tony Merante on 1/3/16.
//  Copyright (c) 2016 Societymedia. All rights reserved.
//

import Foundation
import UIKit


class AwesomeService : BeSwifty {

    let value:Int

    required init() {
        self.value = Int(arc4random_uniform(1000000) + 1)
    }


}

class ViewController2: UIViewController {

    var awesomeService: AwesomeService?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        awesomeService = SwiftyContainer.resolve(AwesomeService.self)
        let val = self.awesomeService!.value
        print(val, terminator: "")
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }




}

class ViewController: UIViewController {

    var awesomeService: AwesomeService?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.


        awesomeService = SwiftyContainer.resolve(AwesomeService.self)
        let val = self.awesomeService!.value
        print(val, terminator: "")

    }


    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    }




}
