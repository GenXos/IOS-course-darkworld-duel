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

  @IBOutlet weak var player1HPLbl: UILabel!
  
  @IBOutlet weak var player2HPLbl: UILabel!
  
  var player1: Player!
  var player2: Player!
  var p1HP: Int = 0
  var p2HP: Int = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    startGame()
  
  }
  
  func startGame() {
    
    player1 = Player(name: "Olly Ogre", hp: 110, attackPwr: 20)
    player1HPLbl.text = "\(player1.hp) HP"
    p1HP = player1.hp
    
    player2 = Player(name: "King Knightly", hp: 110, attackPwr: 20)
    player2HPLbl.text = "\(player2.hp) HP"
    p2HP = player2.hp
    
    player2AttackBtn.enabled = false
    
    playAgainLbl.hidden = true
    playAgainBtn.hidden = true
  }
  
  func createRandomAttackPower() -> Int {
    
    let rand = Int(arc4random_uniform(20))
    return rand
  }
  
  func attack(attacker: Player, attacked:Player) {
    

  }

  func toggleButtons() {
    
    if (player2AttackBtn.enabled) {
      player2AttackBtn.enabled = false
    } else {
      player2AttackBtn.enabled = true
    }
    
    if (player1AttackBtn.enabled) {
      player1AttackBtn.enabled = false
    } else {
      player1AttackBtn.enabled = true
    }
  }
  
  func gameOver() {
    player1AttackBtn.enabled = false
    player2AttackBtn.enabled = false
  
    playAgainBtn.hidden = false
    playAgainLbl.hidden = false
  }
  
  @IBAction func player1Attack(sender: AnyObject) {
    
    toggleButtons()
    let pwr = createRandomAttackPower()
    if player2.attemptAttack(pwr) {
      statusLbl.text = "\(player1.name) attacked \(player2.name) for \(pwr) HP"
      player2HPLbl.text = "\(player2.hp) HP"
    } else {
      statusLbl.text = "Attack was unsuccessful"
    }
    
    if !player2.isAlive {
      player2AttackBtn.enabled = false
      player2HPLbl.text = ""
      statusLbl.text = "\(player1.name) killed \(player2.name)!"
      NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: "gameOver", userInfo: nil, repeats: false)
    }
  }
  
  @IBAction func player2Attack(sender: AnyObject) {
    
    toggleButtons()
    let pwr = createRandomAttackPower()
    if player1.attemptAttack(pwr) {
      statusLbl.text = "\(player2.name) attacked \(player1.name) for \(pwr) HP"
      player1HPLbl.text = "\(player1.hp) HP"
    } else {
      statusLbl.text = "Attack was unsuccessful"
    }
    
    if !player1.isAlive {
      player2AttackBtn.enabled = false
      player1HPLbl.text = ""
      statusLbl.text = "\(player2.name) killed \(player1.name)!"
      NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: "gameOver", userInfo: nil, repeats: false)
    }
  }
  
  @IBAction func playAgainTapped(sender: AnyObject) {
    
    startGame()
  }
  
}

