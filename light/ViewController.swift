//
//  ViewController.swift
//  light
//
//  Created by Apple on 11/3/20.
//  Copyright © 2020 trunghieu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var bulbImageView: UIImageView!
    @IBOutlet weak var isOnSwitch: UISwitch!
    @IBOutlet weak var isOnButton: UIButton!
    var isOn: Bool!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
         isOnSwitch.isOn = true
         bulbImageView.image = UIImage(named: "bulb-on")
    //        isOnSwitch.tintColor = UIColor.red
    //        isOnSwitch.thumbTintColor = UIColor.purple
    //        isOnSwitch.backgroundColor = UIColor.blue
    //        isOnSwitch.onTintColor = UIColor.orange
            
            isOnButton.setTitle("Tắt đèn", for: .normal)
            isOnButton.backgroundColor = UIColor.green
    }

    @IBAction func offBuilb(_ sender: UISwitch) {
        if sender.isOn{
            bulbImageView.image = UIImage(named: "bulb-on")
            isOnButton.setTitle("Tắt đèn", for: .normal)
            isOn = false
        }else{
            bulbImageView.image = UIImage(named: "bulb-off")
            isOnButton.setTitle("Bật đèn", for: .normal)
            isOn = true
        }
        
        
    }
    
    @IBAction func onPress(_ sender: Any) {
        
        if isOn{
               isOnButton.setTitle("Tắt đèn", for: .normal)
               bulbImageView.image = UIImage(named: "bulb-on")
               isOnSwitch.isOn = true
           }else{
               isOnButton.setTitle("Bật đèn", for: .normal)
               bulbImageView.image = UIImage(named: "bulb-off")
               isOnSwitch.isOn = false
           }
           isOn = !isOn
       }
}

