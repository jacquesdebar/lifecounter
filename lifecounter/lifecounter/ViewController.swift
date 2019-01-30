//
//  ViewController.swift
//  lifecounter
//
//  Created by Jacques DeBar on 1/28/19.
//  Copyright © 2019 Jacques DeBar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  
  @IBOutlet weak var p1life: UILabel!
  @IBOutlet weak var p2life: UILabel!
  @IBOutlet weak var p3life: UILabel!
  @IBOutlet weak var p4life: UILabel!
  
  @IBOutlet weak var loser: UILabel!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  
  
  
  @IBAction func tappy(_ sender: UIButton) {
    
    var player : UILabel = p1life
    var update : Int = 0
    
    var playerNum : String = "0"
    
    if (sender.tag < 4) {
      player = p1life
      playerNum =  "1"
    } else if (sender.tag < 8) {
      player = p2life
      playerNum = "2"
    } else if (sender.tag < 12) {
      player = p3life
      playerNum = "3"
    } else {
      player = p4life
      playerNum = "4"
    }
    
    if ((sender.tag % 4) == 0) {
      update = -5
    } else if ((sender.tag % 4) == 1) {
      update = -1
    } else if ((sender.tag % 4) == 2) {
      update = 1
    } else {
      update = 5
    }
    
    let oldLife : Int = Int(player.text!)!
    let newLife : Int = oldLife + update
    
    if (newLife <= 0) {
      loser.text = "Player " + playerNum + " LOSES!"
    }
    
    player.text = String(newLife)
    
  }
  
  
  
  
  
  
  
  
  
  
  
  
//
//
//
//  @IBAction func p1d5(_ sender: Any) {
//    p1life.text = String(Int(p1life.text!)! - 5)
//  }
//
//  @IBAction func p1d1(_ sender: Any) {
//    p1life.text = String(Int(p1life.text!)! - 1)
//  }
//
//  @IBAction func p1u1(_ sender: Any) {
//    p1life.text = String(Int(p1life.text!)! + 1)
//  }
//
//  @IBAction func p1u5(_ sender: Any) {
//    p1life.text = String(Int(p1life.text!)! + 5)
//  }
//
//
//  @IBAction func p2d5(_ sender: Any) {
//    p2life.text = String(Int(p2life.text!)! - 5)
//  }
//
//  @IBAction func p2d1(_ sender: Any) {
//    p2life.text = String(Int(p2life.text!)! - 1)
//  }
//
//  @IBAction func p2u1(_ sender: Any) {
//    p2life.text = String(Int(p2life.text!)! + 1)
//  }
//
//  @IBAction func p2u5(_ sender: Any) {
//    p2life.text = String(Int(p2life.text!)! + 5)
//  }
//
//
//  @IBAction func p3d5(_ sender: Any) {
//    p3life.text = String(Int(p3life.text!)! - 5)
//  }
//
//  @IBAction func p3d1(_ sender: Any) {
//    p3life.text = String(Int(p3life.text!)! - 1)
//  }
//
//  @IBAction func p3u1(_ sender: Any) {
//    p3life.text = String(Int(p3life.text!)! + 1)
//  }
//
//  @IBAction func p3u5(_ sender: Any) {
//    p3life.text = String(Int(p3life.text!)! + 5)
//  }
//
//
//  @IBAction func p4d5(_ sender: Any) {
//    p4life.text = String(Int(p4life.text!)! - 5)
//  }
//
//  @IBAction func p4d1(_ sender: Any) {
//    p4life.text = String(Int(p4life.text!)! - 1)
//  }
//
//  @IBAction func p4u1(_ sender: Any) {
//    p4life.text = String(Int(p4life.text!)! + 1)
//  }
//
//  @IBAction func p4u5(_ sender: Any) {
//    p4life.text = String(Int(p4life.text!)! + 5)
//  }
//
  
  
}

