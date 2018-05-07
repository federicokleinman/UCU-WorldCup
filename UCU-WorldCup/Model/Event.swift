//
//  Event.swift
//  UCU-WorldCup
//
//  Created by SP29 on 19/4/18.
//  Copyright © 2018 ucutrakt. All rights reserved.
//

import Foundation

class Event{
    
    var type = ""  //tipo de evento gol, falta, amarilla, roja, fin partido, comienzo partido
    var minute = 0 //minuto que ocurre el evento (accion)
    var description = ""
    var local = true
    
    init(type: String, minute: Int, description: String, local: Bool){
        self.type = type
        self.minute = minute
        self.description = description
        
        self.local = local
    }
    
}

