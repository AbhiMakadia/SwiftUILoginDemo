//
//  TextFieldView.swift
//  SwiftUI_MVVM
//
//  Created by Abhi Makadia on 15/05/20.
//  Copyright © 2020 Abhi Makadia. All rights reserved.
//

import SwiftUI

struct LoginTextFieldView: View {
    
    //MARK: - Variable Declaration
    @State var username: String = ""
    @State var password:String = ""
    @State var tfUsernameFocus:Bool = false
    @State var tfPasswordFocus:Bool = false
    @State var isRememberMe:Bool = false
    @State var showvalidationAlert:Bool = false
    @State var alertMessage = ""
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            
            VStack(alignment: .leading, spacing: 0){
                Text("Login").font(.custom(UIFont.poppins_Bold, size: 24)).padding(.bottom,8).padding(.top,8).padding(.leading,16).padding(.trailing,16)
                 
                 
                 LoginTextField(lblText: "username", text: $username, placeHolder: "", textFieldFocus: $tfUsernameFocus, onEditingChanged: { (focus) in
                     self.tfUsernameFocus = focus
                 }) {}
                 .padding(.leading,16).padding(.trailing,16)
                 
                 Spacer().frame(height:20)
                 LoginTextField(lblText: "password", text: $password, placeHolder: "", textFieldFocus: $tfPasswordFocus, onEditingChanged: { (focus) in
                     self.tfPasswordFocus = focus
                 }) {}
                 .padding(.leading,16).padding(.trailing,16)
                 
                 Spacer().frame(height:14)
                 HStack{
                     Spacer()
                     Button(action: {
                         print("Forgot pass Tapped")
                     }) {
                         Text("Forgot password?").foregroundColor(.blue).font(.custom(UIFont.poppins_Bold, size: 14))
                     }
                 }
                 .padding(.leading,16).padding(.trailing,16)
                Spacer().frame(height:14)
            }.background(Color.white)
            .cornerRadius(6)
            .shadow(color: Color.gray.opacity(0.4),radius: 12)
            
            VStack(alignment: .leading, spacing: 0){
                Spacer().frame(height: 25)
                
                
                HStack{
                    RemeberMe(isSelect: $isRememberMe)
                    .padding(.leading,16)
                    Spacer()
                    Button(action: {
                        
                        if self.username.isEmpty{
                            self.showvalidationAlert.toggle()
                            self.alertMessage = "Please enter username"
                        }else if self.password.isEmpty{
                            self.showvalidationAlert.toggle()
                            self.alertMessage = "Please enter password"
                        }else{
                            print("Login Success!")
                        }
                        
                        
                    }) {
                        Text("Sign In").foregroundColor(.white).font(.custom(UIFont.poppins_Bold, size: 16))
                            
                        .cornerRadius(4)
                        
                            .frame(width:150,height:50)
                        .background(LinearGradient(gradient: Gradient(colors: [UIColor.gradientGreen, UIColor.gradientBlue]), startPoint: .leading, endPoint: .trailing))
                          .cornerRadius(4)
                            .padding(.trailing,16)
                        .shadow(color: Color.gray.opacity(0.4),radius: 15,x: 10, y: 10)
                    }
                }
            }
            
        }.alert(isPresented: $showvalidationAlert) {
            Alert(title: Text(alertMessage), message: nil, dismissButton: .default(Text("Okay")))
        }
        
    }
    
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        LoginTextFieldView()
    }
}
