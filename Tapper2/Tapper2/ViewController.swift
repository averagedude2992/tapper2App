//
//  ViewController.swift
//  Tapper2
//
//  Created by Briano Santos on 8/30/16.
//  Copyright © 2016 FairSkiesTechnologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Properties
    
    
    //Outlets
    @IBOutlet weak var tapperLogo: UIImageView!
    @IBOutlet weak var howManyTxtField: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var coinBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
    @IBAction func onPlayBtnPressed(sender: AnyObject) {
        tapperLogo.hidden = true
        howManyTxtField.hidden = true
        playBtn.hidden = true
        
        coinBtn.hidden = false
        tapsLbl.hidden = false
    }
    
    @IBAction func onCoinBtnPressed(sender: AnyObject) {
        
    }

}

