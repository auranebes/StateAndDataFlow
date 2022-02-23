//
//  RegisterTextFieldView.swift
//  StateAndDataFlow
//
//  Created by Arslan Abdullaev on 23.02.2022.
//

import SwiftUI

struct RegisterTextFieldView: View {
    
    @Binding var textValue: String
    @Binding var isConform: Bool
    
    var body: some View {
        TextField("Enter your name", text: $textValue, onEditingChanged: { _ in
            checkValue()
        })
        .multilineTextAlignment(.center)
    }
}

extension RegisterTextFieldView {
    private func checkValue() {
        if textValue.count >= 3{
            isConform = true
            return
        }
        isConform = false
    }
}
