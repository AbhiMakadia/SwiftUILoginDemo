//
//  SocialLogin.swift
//  SwiftUI_MVVM
//
//  Created by Abhi Makadia on 18/05/20.
//  Copyright © 2020 Abhi Makadia. All rights reserved.
//

import SwiftUI

struct SocialLogin: View {
    var body: some View {
        HStack(alignment: .center, spacing: 8){
            MyDivider(color: .gray, height: 1.5)
            Text("Social Login").foregroundColor(.gray).font(.custom(UIFont.poppins_medium, size: 14))
            MyDivider(color: .gray, height: 1.5)
        }
    }
}

struct SocialLogin_Previews: PreviewProvider {
    static var previews: some View {
        SocialLogin()
    }
}
