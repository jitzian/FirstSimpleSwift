//
//  ViewController.swift
//  SimpleSwiftApp
//
//  Created by raian on 7/29/17.
//  Copyright © 2017 Jonathan Sandoval Cruz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mButton : UIButton!
    @IBOutlet weak var mLabel : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeLabelTextOnButtonClick(){
        let alertController = UIAlertController(title: "Title Alert", message: "Just a message", preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        self.present(alertController, animated: true, completion: nil)
        mLabel.text = "Neelam's is sleeping in my bed"
        alertAfterValidating(strInput: mLabel.text)
        
    }
    
    func alertAfterValidating(strInput : String!){
        let isNeelam : Bool = strInput == "Neelam's is sleeping in my bed" ? true : false
        print(isNeelam)
        
        if strInput.contains("Neelam"){
            print("Neelam still is sleeping")
        }else{
            print("Neelam is not here..")
        }
    }


}

