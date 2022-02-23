//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by brubru on 21.02.2022.
//

import Foundation
import Combine
import SwiftUI

class UserManager: ObservableObject {
    @AppStorage(UserInfo.isRegister.rawValue) var isRegister = false
    @AppStorage(UserInfo.name.rawValue) var name = ""
    @AppStorage(UserInfo.signOut.rawValue) var signOut = false
    
    enum UserInfo: String {
        case name = "name"
        case isRegister = "isRegister"
        case signOut = "signOut"
    }
    
    func signOutUser() {
        if isRegister {
                isRegister.toggle()
                name = ""
        }
    }
}

