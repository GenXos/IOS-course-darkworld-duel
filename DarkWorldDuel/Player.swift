//
//  Player.swift
//  DarkWorldDuel
//
//  Created by Todd Fields on 2015-11-22.
//  Copyright © 2015 Todd Fields. All rights reserved.
//

import Foundation

class Player: Character {
  
  private var _name = "Player"
  var name: String {
    get {
      return _name
    }
  }
  
  private var _image = "player"
  var image: String {
    get {
      return _image
    }
  }
  

  
  convenience init(name: String, hp: Int, attackPwr: Int) {
    
    self.init(startingHP: hp, attackPwr: attackPwr)
    _name = name
  }

}