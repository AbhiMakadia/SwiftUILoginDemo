//
//  SocialLoginOption.swift
//  SwiftUI_MVVM
//
//  Created by Abhi Makadia on 18/05/20.
//  Copyright © 2020 Abhi Makadia. All rights reserved.
//

import SwiftUI

struct SocialLoginOption: View {
    var body: some View {
        HStack(alignment: .center, spacing: 16){
            Spacer()
            SocialIcon(iconText: "f")
            SocialIcon(iconText: "G")
            SocialIcon(iconText: "t")
            SocialIcon(iconText: "in")
            Spacer()
        }
    }
}

struct SocialLoginOption_Previews: PreviewProvider {
    static var previews: some View {
        SocialLoginOption()
    }
}
