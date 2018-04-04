//
//  ViewController.swift
//  PayUMoneyExampleInSwift4
//
//  Created by MOHIT SINGH on 03/04/18.
//  Copyright © 2018 MOHIT SINGH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        PayUServiceHelper.sharedManager().getPayment(self, "mail@mymail.com", "9878765656", "Name", "100.00", "txnnid9087877", didComplete: { (dict, error) in
            if let error = error {
                print("Error")
            }else {
                
                print("Sucess")
            }
        }) { (error) in
            print("Payment Process Breaked")
        }
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

