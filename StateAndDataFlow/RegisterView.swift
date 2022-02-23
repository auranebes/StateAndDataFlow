//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by brubru on 21.02.2022.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject var user: UserManager
    @State private var name = ""
    @State private var isConform = false
    
    var body: some View {
        VStack {
            HStack{
                RegisterTextFieldView(textValue: $name, isConform: $isConform)
                if isConform {
                Text("\(name.count)")
                        .foregroundColor(.green)
                } else {
                Text("\(name.count)")
                        .foregroundColor(.red)
                }

            }
            .frame(width: UIScreen.main.bounds.width * 0.9)
            Button(action: registerUser) {
                if isConform {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("Ok")
                    }
                } else {
                
                Image(systemName: "checkmark.circle")
                    .foregroundColor(.black)
                Text("Ok")
                    .foregroundColor(.gray)
                }
            }
        }
    }
}

extension RegisterView {
    private func registerUser() {
        if !name.isEmpty, isConform {
            user.name = name
            user.isRegister.toggle()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
