//
//  HistoryViewController.swift
//  lifecounter
//
//  Created by Jacques DeBar on 2/2/19.
//  Copyright © 2019 Jacques DeBar. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {

  
  
  @IBOutlet weak var gameLog: UIStackView!
  
  var historyBack : [String] = []
  
  
  override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  
  override func loadView() {
    super.loadView()
  }

  var itemDescription: String = ""
  
  
  @IBAction func playersTap(_ sender: Any) {
    dismiss(animated: false, completion: nil)
  }
  
  
  
  
  func addItems(events: [String]) {
    var top : Int = 0
    for item in events {
      top += 20
      let newItem = UILabel(frame: CGRect(x: 0, y: top, width: 200, height:21))
      newItem.text = item
      gameLog.addSubview(newItem)
      
    }
    historyBack = events
  }
  
  
 

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
  
  
}
