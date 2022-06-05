//
//  ErrorHandler.swift
//  iShop SwiftUI
//
//  Created by Starvian Wibowo on 6/06/22.
//

import Foundation
import Firebase

extension AuthErrorCode.Code {
    var stringValue: String {
        switch self {
        case .emailAlreadyInUse:
            return "user exists! please Login"
        case .invalidEmail:
            return "Please enter a valid email ID"
        case .userNotFound:
            return "No Account found. signup to continue"
        case .networkError:
            return "No internet"
        case .wrongPassword:
            return "Password invalid"
        case .weakPassword:
            return "Password should have minimum 6 characters"
        default:
            print("Error")
            return "please try again later"
        }
    }
}



extension Error {
    var authErrorValue : String{
        let errorcode = AuthErrorCode.Code(rawValue: self._code)
        return errorcode!.stringValue
    }
}

