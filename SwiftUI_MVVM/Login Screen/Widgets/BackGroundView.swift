//
//  BackGroundView.swift
//  SwiftUI_MVVM
//
//  Created by Abhi Makadia on 15/05/20.
//  Copyright © 2020 Abhi Makadia. All rights reserved.
//

import SwiftUI

struct BackGroundView: View {
    var body: some View {
        ZStack{
            VStack{
                
                
                HStack(alignment: .top){
                   Spacer()
                Image("Family").resizable().aspectRatio(contentMode: .fit)
                    .padding(.top, ScreenUtils.heightWithSafeArea(height: 0))
                    .clipped()
                    .offset(x: 20)
                    .frame(width: ScreenUtils.getWidthWithSafeArea(ratio: 85))
                }
                
                Spacer()
                Image("Buildings")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipped()
                
            }
            
            VStack{
                HStack(alignment:.center,spacing: 0){
                    Image("logo")
                    Text("LOGO").font(.custom(UIFont.poppins_Bold, size: 30))
                    Spacer()

                    }.padding(.top,ScreenUtils.heightWithSafeArea(height: 30)).offset(x: ScreenUtils.getWidthWithSafeArea(ratio: 10)) //.padding(.leading,40)
                Spacer()
            }
                
            
        }.edgesIgnoringSafeArea(.all)
    }
}

struct BackGroundView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
           BackGroundView()
              .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
              .previewDisplayName("iPhone SE")

           BackGroundView()
              .previewDevice(PreviewDevice(rawValue: "iPhone XS Max"))
              .previewDisplayName("iPhone XS Max")
        }
        
    }
}
