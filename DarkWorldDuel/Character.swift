//
//  Character.swift
//  DarkWorldDuel
//
//  Created by Todd Fields on 2015-11-21.
//  Copyright © 2015 Todd Fields. All rights reserved.
//

import Foundation

class Character {
  
  private var _attackPwr = 10
  var attackPwr: Int {
    get {
      return _attackPwr
    }
  }
  
  private var _hp = 100
  var hp: Int {
    get {
      return _hp
    }
  }
  
  var isAlive: Bool {
    get {
      if hp <= 0 {
        return false
      } else {
        return true
      }
    }
  }
  
  init(startingHP: Int, attackPwr: Int) {
    
    self._hp = startingHP
    self._attackPwr = attackPwr
  }
  
  func attemptAttack(attackPwr: Int) -> Bool {
    
    self._hp -= attackPwr
    
    return true
  }

}