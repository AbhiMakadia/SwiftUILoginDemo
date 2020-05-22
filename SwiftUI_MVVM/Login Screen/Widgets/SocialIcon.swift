//
//  SocialIcon.swift
//  SwiftUI_MVVM
//
//  Created by Abhi Makadia on 18/05/20.
//  Copyright © 2020 Abhi Makadia. All rights reserved.
//

import SwiftUI

struct SocialIcon: View {
    
    var iconText:String = ""
    
    var body: some View {
        Text(iconText).foregroundColor(.white).font(.custom(UIFont.poppins_Bold, size: 16))
            .frame(width:54,height:54)
        .background(LinearGradient(gradient: Gradient(colors: [UIColor.gradientGreen, UIColor.gradientBlue]), startPoint: .leading, endPoint: .trailing))
          .cornerRadius(27)
    }
}

struct SocialIcon_Previews: PreviewProvider {
    static var previews: some View {
        SocialIcon()
    }
}
