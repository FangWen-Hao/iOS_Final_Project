//
//  Message.swift
//  EaseChat
//
//  Created by Starvian Wibowo on 6/06/22.
//

import UIKit
import FirebaseAuth

struct Message: Hashable {
   // var id : String
    var fromId: String?
    var text : String?
    var timestamp : Int?
    var toId : String?
    var imageUrl : String?
    
    var id : String {
        if fromId == getUID(){
            return toId!
        } else {
            return fromId!
        }
    }
        
    func chatPatnerId() -> String? {
        return fromId == getUID() ? toId : fromId
    }
}
