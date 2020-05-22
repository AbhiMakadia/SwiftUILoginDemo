//
//  ScreenUtils.swift
//  SwiftUI_MVVM
//
//  Created by Abhi Makadia on 15/05/20.
//  Copyright © 2020 Abhi Makadia. All rights reserved.
//

import UIKit

class ScreenUtils: NSObject {
    
//
//    static let screenWidth:CGFloat = CGFloat()
//    static let screen_height:CGFloat = CGFloat()
//    static let pixelRatio = UIScreen.main.scale
    
    
    
    
    static let screen_height = UIScreen.main.bounds.size.height
    static let screen_width = UIScreen.main.bounds.size.width
    static let window = UIApplication.shared.keyWindow //UIApplication.shared.connectedScenes.filter({$0.activationState == .foregroundActive}).map({$0 as? UIWindowScene}).compactMap({$0}).first?.windows.filter({$0.isKeyWindow}).first
    static let boundHeight = screen_height - window!.safeAreaInsets.top - window!.safeAreaInsets.bottom
    
    
    
    
    class func ratioWidth(ratio:CGFloat) -> CGFloat{
        return (screen_width * ratio) / 100
    }

    
    class func heightWithSafeArea(height:CGFloat) -> CGFloat{
        if #available(iOS 11.0, *) {
            //let window = UIApplication.shared.keyWindow
            let safeAreaInset = window!.safeAreaInsets
            return safeAreaInset.top + height
        }else{
            return height
        }
    }
    
    class func getWidthWithSafeArea(ratio:CGFloat) -> CGFloat{
        if #available(iOS 11.0, *) {
            let safeAreaInset = window!.safeAreaInsets
            return ((screen_width - safeAreaInset.left - safeAreaInset.right) * ratio) / 100
        }else{
            return (screen_width * ratio) / 100
        }
    }


    class func getHeightWithSafeArea(ratio:CGFloat) -> CGFloat{
        if #available(iOS 11.0, *) {
            let safeAreaInset = window!.safeAreaInsets
            return ((screen_width - safeAreaInset.top - safeAreaInset.bottom) * ratio) / 100
        }else{
            return (screen_height * ratio) / 100
        }
    }

    
}
