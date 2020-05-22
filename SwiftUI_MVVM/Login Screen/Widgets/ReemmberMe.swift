//
//  ReemmberMe.swift
//  SwiftUI_MVVM
//
//  Created by Abhi Makadia on 18/05/20.
//  Copyright © 2020 Abhi Makadia. All rights reserved.
//

import SwiftUI

struct RemeberMe: View {
    
    @Binding var isSelect:Bool
    
    var body: some View {
        
        Button(action: {
            print("Forgot pass Tapped")
            self.isSelect.toggle()
        }) {
            HStack(alignment: .center,spacing: 8){
                Image(getImage())
                Text("Remember Me").foregroundColor(.gray)
            }
        }
        
        
        
    }
    
    
    //MARK: - Function Declaration
    func getImage() -> String {
        if (self.isSelect) {
            return "radio_selected"
        } else {
            return "radio_deselected"
        }
    }
    
    
}

struct RememberMe_Previews: PreviewProvider {
    static var previews: some View {
        RemeberMe(isSelect: testBool)
    }
}
