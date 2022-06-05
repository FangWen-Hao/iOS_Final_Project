//
//  Constants.swift
//  EaseChat
//
//  Created by Starvian Wibowo on 6/06/22.
//


import Foundation
import Firebase

//MARK: -  function to get uid
internal func getUID() -> String {
    let uid = Auth.auth().currentUser?.uid
    return uid ?? "notFound"
}


public func debugLog(message: String) {
    #if DEBUG
    debugPrint("=======================================")
    debugPrint(message)
    debugPrint("=======================================")
    #endif
}
