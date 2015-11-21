//
//  ViewController.swift
//  DarkWorldDuel
//
//  Created by Todd Fields on 2015-11-21.
//  Copyright © 2015 Todd Fields. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var player1AttackBtn: UIButton!

  @IBOutlet weak var player2AttackBtn: UIButton!
  
  @IBOutlet weak var playAgainBtn: UIButton!

  @IBOutlet weak var playAgainLbl: UILabel!
  
  @IBOutlet weak var statusLbl: UILabel!

  @IBOutlet weak var player1Img: UIImageView!
  
  @IBOutlet weak var player2Img: UIImageView!

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  @IBAction func player1Attack(sender: AnyObject) {
  }
  
  @IBAction func player2Attack(sender: AnyObject) {
  }
  
  @IBAction func playAgainTapped(sender: AnyObject) {
  }
  
}

