//
//  ViewController.swift
//  lifecounter
//
//  Created by Jacques DeBar on 1/28/19.
//  Copyright © 2019 Jacques DeBar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
  

  
  
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
  
  @IBOutlet weak var addButton: UIButton!
  @IBOutlet weak var removeButton: UIButton!
  
  
  
  var history : [String] = []
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    dmg.delegate = self
  }
  
  
  func startHistory(events: [String]) {
    history = []
    for item in events {
      history.append(item)
    }
  }
  
  
  
  
  
  @IBAction func addTap(_ sender: UIButton) {
    if (p3.isHidden) {
      p3.isHidden = false
      if (!removeButton.isEnabled) {
        removeButton.isEnabled = true
      }
      history.append("Player 3 joined the game")
    } else if (p4.isHidden) {
      p4.isHidden = false
      history.append("Player 4 joined the game")
    } else if (p5.isHidden) {
      p5.isHidden = false
      history.append("Player 5 joined the game")
    } else if (p6.isHidden) {
      p6.isHidden = false
      history.append("Player 6 joined the game")
    } else if (p7.isHidden) {
      p7.isHidden = false
      history.append("Player 7 joined the game")
    } else {
      p8.isHidden = false
      addButton.isEnabled = false
      history.append("Player 8 joined the game")
    }
    
  }
  
  
  @IBAction func removeTap(_ sender: Any) {
    if (!p8.isHidden) {
      p8.isHidden = true
      p8life.text = "20"
      if (!addButton.isEnabled) {
        addButton.isEnabled = true
      }
      history.append("Player 3 left the game")
    } else if (!p7.isHidden) {
      p7.isHidden = true
      p7life.text = "20"
      history.append("Player 4 left the game")
    } else if (!p6.isHidden) {
      p6.isHidden = true
      p6life.text = "20"
      history.append("Player 5 left the game")
    } else if (!p5.isHidden) {
      p5.isHidden = true
      p5life.text = "20"
      history.append("Player 6 left the game")
    } else if (!p4.isHidden) {
      p4.isHidden = true
      p4life.text = "20"
      history.append("Player 7 left the game")
    } else {
      p3.isHidden = true
      p3life.text = "20"
      removeButton.isEnabled = false
      history.append("Player 8 left the game")
    }
  }
  
  
  
  @IBAction func tappy(_ sender: UIButton) {
    
    var player : UILabel = p1life
    var update : Int = 0
    
    var playerNum : String = "0"
    var dmgNum = abs(Int(dmg.text!)!)
    
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
      update = (-1 * dmgNum)
      history.append("Player \(playerNum) lost \(dmgNum) life")
    } else if ((sender.tag % 4) == 1) {
      update = -1
      history.append("Player \(playerNum) lost 1 life")
    } else if ((sender.tag % 4) == 2) {
      update = 1
      history.append("Player \(playerNum) gained 1 life")
    } else {
      update = dmgNum
      history.append("Player \(playerNum) gained \(dmgNum) life")
    }
    
    let oldLife : Int = Int(player.text!)!
    let newLife : Int = oldLife + update
    
    addButton.isEnabled = false
    
    
    
    if (newLife <= 0) {
      loser.text = "Player \(playerNum) LOSES!"
      history.append("Player \(playerNum) lost!")
    }
    
    player.text = String(newLife)
    
  }
  
  
  
  @IBAction func changeDmg(_ sender: Any) {
    
  }
  
  
  
  
  
  
  
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // Get the new view controller using segue.destination.
    // Pass the selected object to the new view controller.
    let histVC : HistoryViewController = segue.destination as! HistoryViewController
    histVC.addItems(events: history)
  }
  
  
}

