//
//  ViewController.swift
//  playXyloPhone
//
//  Created by Vivek Dosaya on 30/08/19.
//  Copyright © 2019 Vivek Dosaya. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController,AVAudioPlayerDelegate {
    var audioPlayer : AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func keyPressed(_ sender: Any) {
        let soundURL = Bundle.main.url(forResource: "note\((sender as AnyObject).tag)", withExtension: "wav")
        do{
            audioPlayer = try AVAudioPlayer(contentsOf : soundURL!)
        }
        catch{
            print("error is : \(Error.self)")
        }
        audioPlayer.play()
        
        
        
        
        
        
        
        
    }
    

    
}

