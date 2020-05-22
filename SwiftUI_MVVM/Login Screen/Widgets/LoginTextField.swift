//
//  LoginTextField.swift
//  SwiftUI_MVVM
//
//  Created by Abhi Makadia on 15/05/20.
//  Copyright © 2020 Abhi Makadia. All rights reserved.
//

import SwiftUI

struct LoginTextField: View {
    
    @State var lblText: String
    @Binding var text: String
    @State var placeHolder: String
    @Binding var textFieldFocus: Bool
    @State var onEditingChanged: (Bool) -> Void
    @State var onCommit: () -> Void
    
    
    func dividerColor() ->Color {
        if $textFieldFocus.wrappedValue {
            return Color.blue
        }else {
            return Color.gray
        }
    }
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
             Text(lblText).foregroundColor(.secondary).font(.custom(UIFont.poppins_medium, size: 12)).padding(.bottom,-2)
            TextField(placeHolder, text: $text, onEditingChanged: onEditingChanged, onCommit: onCommit).padding(.top,0).frame(height: 30)
            MyDivider(color: Color.blue, height: 3)
            //Divider().background($textFieldFocus.wrappedValue ? Color.blue : Color.gray).frame(height: 12)
        }
    }
}

struct LoginTextField_Previews: PreviewProvider {
    static var previews: some View {
        LoginTextField(lblText: "username", text: testStr, placeHolder: "Username", textFieldFocus: testBool, onEditingChanged: { _ in (testBool.wrappedValue) }, onCommit: {})
        
    }
}


var testStr: Binding<String> {
    return Binding(get: {
        ""
    }) { (test) in
        return test
    }
}

var testBool: Binding<Bool> {
    return Binding(get: {
        false
    }) { (test) in
        return test
    }
}
