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
  @IBOutlet weak var p5life: UILabel!
  @IBOutlet weak var p6life: UILabel!
  @IBOutlet weak var p7life: UILabel!
  @IBOutlet weak var p8life: UILabel!
  
  @IBOutlet weak var loser: UILabel!
  
  
  @IBOutlet weak var p3: UIStackView!
  @IBOutlet weak var p4: UIStackView!
  @IBOutlet weak var p5: UIStackView!
  @IBOutlet weak var p6: UIStackView!
  @IBOutlet weak var p7: UIStackView!
  @IBOutlet weak var p8: UIStackView!
  
  @IBOutlet weak var p1mx: UIButton!
  @IBOutlet weak var p1ax: UIButton!
  @IBOutlet weak var p2mx: UIButton!
  @IBOutlet weak var p2ax: UIButton!
  @IBOutlet weak var p3mx: UIButton!
  @IBOutlet weak var p3ax: UIButton!
  @IBOutlet weak var p4mx: UIButton!
  @IBOutlet weak var p4ax: UIButton!
  @IBOutlet weak var p5mx: UIButton!
  @IBOutlet weak var p5ax: UIButton!
  @IBOutlet weak var p6mx: UIButton!
  @IBOutlet weak var p6ax: UIButton!
  @IBOutlet weak var p7mx: UIButton!
  @IBOutlet weak var p7ax: UIButton!
  @IBOutlet weak var p8mx: UIButton!
  @IBOutlet weak var p8ax: UIButton!
  
  
  @IBOutlet weak var dmg: UITextField!
  @IBOutlet weak var changeDmg: UIButton!
  
  @IBOutlet weak var addButton: UIButton!
  @IBOutlet weak var removeButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  
  @IBAction func addTap(_ sender: UIButton) {
    if (p3.isHidden) {
      p3.isHidden = false
      if (!removeButton.isEnabled) {
        removeButton.isEnabled = true
      }
    } else if (p4.isHidden) {
      p4.isHidden = false
    } else if (p5.isHidden) {
      p5.isHidden = false
    } else if (p6.isHidden) {
      p6.isHidden = false
    } else if (p7.isHidden) {
      p7.isHidden = false
    } else {
      p8.isHidden = false
      addButton.isEnabled = false
    }
    
  }
  
  
  @IBAction func removeTap(_ sender: Any) {
    if (!p8.isHidden) {
      p8.isHidden = true
      p8life.text = "20"
      if (!addButton.isEnabled) {
        addButton.isEnabled = true
      }
    } else if (!p7.isHidden) {
      p7.isHidden = true
      p7life.text = "20"
    } else if (!p6.isHidden) {
      p6.isHidden = true
      p6life.text = "20"
    } else if (!p5.isHidden) {
      p5.isHidden = true
      p5life.text = "20"
    } else if (!p4.isHidden) {
      p4.isHidden = true
      p4life.text = "20"
    } else {
      p3.isHidden = true
      p3life.text = "20"
      removeButton.isEnabled = false
    }
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
    } else if (sender.tag < 16) {
      player = p4life
      playerNum = "4"
    } else if (sender.tag < 20) {
      player = p5life
      playerNum = "5"
    } else if (sender.tag < 24) {
      player = p6life
      playerNum = "6"
    } else if (sender.tag < 28) {
      player = p7life
      playerNum = "7"
    } else {
      player = p8life
      playerNum = "8"
    }
    
    
    if ((sender.tag % 4) == 0) {
      update = (-1 * abs(Int(dmg.text!)!))
    } else if ((sender.tag % 4) == 1) {
      update = -1
    } else if ((sender.tag % 4) == 2) {
      update = 1
    } else {
      update = abs(Int(dmg.text!)!)
    }
    
    let oldLife : Int = Int(player.text!)!
    let newLife : Int = oldLife + update
    
    addButton.isEnabled = false
    
    if (newLife <= 0) {
      loser.text = "Player " + playerNum + " LOSES!"
      
    }
    
    player.text = String(newLife)
    
  }
  
  
  
  @IBAction func changeDmg(_ sender: Any) {
    
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

