//
//  DataSource.swift
//  HoHS
//
//  Created by Jihye Jegal on 2017. 4. 6..
//  Copyright © 2017년 Jihye Jegal. All rights reserved.
//

import Foundation

var MainDataCenter:MainData = MainData()

class MainData {
    var expansions:[Expansion] = []
    
    init(){
        let goblin = Expansion(name:"고블린 대 노움")
        let masang = Expansion(name: "대 마상시합")
        let ancient = Expansion(name: "고대 신의 속삭임")
        let gadget = Expansion(name: "비열한 거리의 가젯잔")
        let ungoro = Expansion(name: "운고로를 위한 여정")
        
        expansions += [goblin, masang, ancient, gadget, ungoro]
    }
}

class Expansion {
    let name:String
    var cards:[String] = []
    
    init(name:String){
        self.name = name
        cards.append("card1")
        cards.append("card2")
    }
}
