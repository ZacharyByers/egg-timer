//
//  ViewController.swift
//  Egg Timer
//
//  Created by Zachary Byers on 2/1/18.
//  Copyright © 2018 Zachary Byers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
  var timer = Timer()
  
  @IBOutlet weak var timerLabel: UILabel!
  
  @objc func processTimer() {
    if let time = Int(timerLabel.text!) {
      if time == 0 {
        timer.invalidate()
      } else {
        timerLabel.text = String(time - 1)
      }
    }
  }
  
  @IBAction func pauseButton(_ sender: Any) {
    timer.invalidate()
  }
  
  @IBAction func playButton(_ sender: Any) {
    timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
  }
  
  @IBAction func resetButton(_ sender: Any) {
    timerLabel.text = "210"
  }
  
  @IBAction func minusTen(_ sender: Any) {
    if let time = Int(timerLabel.text!) {
      if time >= 10 {
        timerLabel.text = String(time - 10)
      }
    }
  }
  
  @IBAction func plusTen(_ sender: Any) {
    if let time = Int(timerLabel.text!) {
      timerLabel.text = String(time + 10)
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

