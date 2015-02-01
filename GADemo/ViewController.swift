//
//  ViewController.swift
//  GADemo
//
//  Created by JERRY CHANG on 1/11/15.
//  Copyright (c) 2015 poptimization.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        GAI.sharedInstance().defaultTracker.set(kGAIScreenName, value: "Test Home Screen")
        GAI.sharedInstance().defaultTracker.send(GAIDictionaryBuilder.createScreenView().build())

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func eventButtonOnePressed(sender: UIButton) {
        GAI.sharedInstance().defaultTracker.send(GAIDictionaryBuilder.createEventWithCategory("ui_action", action: "button_press", label: "press_button_1", value: nil).build())
    }

    @IBAction func eventButtonTwoPressed(sender: UIButton) {
        GAI.sharedInstance().defaultTracker.send(GAIDictionaryBuilder.createEventWithCategory("ui_action", action: "button_press", label: "press_button_2", value: nil).build())
    }
}

