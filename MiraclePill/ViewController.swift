//
//  ViewController.swift
//  MiraclePill
//
//  Created by Appcelerator on 8/11/17.
//  Copyright © 2017 Appcelerator. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{

    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var statePickerbtn: UIButton!
    
    @IBOutlet weak var BuyNowbtn: UIButton!
    
    
    let states = ["Dhaka","Barisal","Comilla","Bhola"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        
           }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func statePickerbtnPress(sender: AnyObject) {
     statePicker.hidden = false
     
    }
    
    
    @IBAction func BuyNowbtnPress(sender: AnyObject) {
        
       // let storyboard = UIStoryboard(name: "Main", bundle: nil);
       // let vc = storyboard.instantiateViewControllerWithIdentifier("MySecondSecreen"); // MySecondSecreen the storyboard ID
        // self.presentViewController(vc, animated: true, completion: nil);
        
        
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
     return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
      return states.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
      return states[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerbtn.setTitle(states[row], forState: UIControlState())
        statePicker.hidden = true
    }



}

