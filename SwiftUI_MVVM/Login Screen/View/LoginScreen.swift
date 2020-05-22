//
//  LoginScreen.swift
//  SwiftUI_MVVM
//
//  Created by Abhi Makadia on 15/05/20.
//  Copyright © 2020 Abhi Makadia. All rights reserved.
//

import SwiftUI

struct LoginScreen: View {
    
    //MARK: - Variable Declaration
    
    @State var validationCheck = false
    
    var body: some View {
        ZStack(alignment: .top){
            BackGroundView()
            ScrollView(.vertical) {
                VStack(alignment: .leading, spacing: 0){
                    Spacer().frame(height:ScreenUtils.boundHeight * 0.13).background(Color.red)
                    LoginTextFieldView().padding(.horizontal)
                    
    
//                    Spacer().frame(height: 25)
//                    
//                    
//                    HStack{
//                        RemeberMe(isSelect: $isRememberMe)
//                        .padding(.leading,16)
//                        Spacer()
//                        Button(action: {
//                            print("GradientButton Tapped")
//                            self.validationCheck = true
//                        }) {
//                            Text("Sign In").foregroundColor(.white).font(.custom(UIFont.poppins_Bold, size: 16))
//                                
//                            .cornerRadius(4)
//                            
//                                .frame(width:150,height:50)
//                            .background(LinearGradient(gradient: Gradient(colors: [UIColor.gradientGreen, UIColor.gradientBlue]), startPoint: .leading, endPoint: .trailing))
//                              .cornerRadius(4)
//                                .padding(.trailing,16)
//                            .shadow(color: Color.gray.opacity(0.4),radius: 15,x: 10, y: 10)
//                        }
//                    }
                    
                    Spacer().frame(height: 40)
                    
                    SocialLogin().padding(.horizontal,16)
                    
                    Spacer().frame(height: 20)
                    SocialLoginOption()
                        .frame(height:60)
                    
                }
            }
            
            
        }
        
    }
    
    
    //MARK: - Function Declaration
    func isValidCredentials() {
        
    }
    
    
    
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
