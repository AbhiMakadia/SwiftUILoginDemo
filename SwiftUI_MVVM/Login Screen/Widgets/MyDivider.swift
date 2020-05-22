//
//  MyDivider.swift
//  SwiftUI_MVVM
//
//  Created by Abhi Makadia on 18/05/20.
//  Copyright © 2020 Abhi Makadia. All rights reserved.
//

import SwiftUI

struct MyDivider: View {
    @State var color: Color
    @State var height: CGFloat
    
    var body: some View {
        Rectangle()
            .fill(color)
            .frame(height: height)
            //.edgesIgnoringSafeArea(.horizontal)
    }
}

//struct MyDivider_Previews: PreviewProvider {
//    static var previews: some View {
//        MyDivider(color: Color.gray, height: 2)
//    }
//}
