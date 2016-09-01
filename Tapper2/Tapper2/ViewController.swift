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
    var maxTaps = 0
    var currentTaps = 0
    
    //Outlets
    @IBOutlet weak var tapperLogo: UIImageView!
    @IBOutlet weak var howManyTxtField: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var coinBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
    @IBAction func onPlayBtnPressed(sender: AnyObject) {
        
        if howManyTxtField.text != nil && howManyTxtField.text != "" {
        
            tapperLogo.hidden = true
            howManyTxtField.hidden = true
            playBtn.hidden = true
        
            coinBtn.hidden = false
            tapsLbl.hidden = false
            
            maxTaps = Int(howManyTxtField.text!)!
            currentTaps = 0
            
            updateTapsLbl()
        }
    }
    
    @IBAction func onCoinBtnPressed(sender: AnyObject) {
            currentTaps += 1
            updateTapsLbl()
        
            isGameOver()
        }
    
    func updateTapsLbl() {
        tapsLbl.text = "\(currentTaps) Tapz"
    }

    func isGameOver() {
        if currentTaps >= maxTaps {
          restartGame()
        }
    }
    
    func restartGame() {
        tapperLogo.hidden = false
        howManyTxtField.hidden = false
        playBtn.hidden = false
        
        coinBtn.hidden = true
        tapsLbl.hidden = true
        
        maxTaps = 0
        howManyTxtField.text = ""
        }
    }