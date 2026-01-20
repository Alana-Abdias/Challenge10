//import Foundation
//import CoreGraphics
//import SwiftUI
//import SpriteKit
//
//extension Font {
//    static func jersey10(fontStyle: Font.TextStyle) -> Font {
//        return Font.custom("Delius-Regular", size: fontStyle.size)
//    }
//}
//
//extension Font.TextStyle {
//    var size: CGFloat {
//        switch self {
//        case .largeTitle: return 68
//        case .title: return 30
//        case .title2: return 22
//        case .title3: return 20
//        case .headline: return 18
//        case .body: return 16
//        case .callout: return 15
//        case .subheadline: return 14
//        case .footnote: return 13
//        case .caption: return 12
//        case .caption2: return 11
//        @unknown default: return 8
//        }
//    }
//}
//
//
//
//public struct MyFont {
//    public static func registerFonts() {
//        registerFont(bundle: Bundle.main , fontName: "Delius-Regular", fontExtension: ".ttf")    }
//    
//    fileprivate static func registerFont(bundle: Bundle, fontName: String, fontExtension: String) {
//        
//        guard let fontURL = bundle.url(forResource: fontName, withExtension: fontExtension),
//              let fontDataProvider = CGDataProvider(url: fontURL as CFURL),
//              let font = CGFont(fontDataProvider) else {
//            fatalError("Couldn't create font from data")
//        }
//        
//        var error: Unmanaged<CFError>?
//        
//        CTFontManagerRegisterFontsForURL(<#T##fontURL: CFURL##CFURL#>, <#T##scope: CTFontManagerScope##CTFontManagerScope#>, <#T##error: UnsafeMutablePointer<Unmanaged<CFError>?>?##UnsafeMutablePointer<Unmanaged<CFError>?>?#>)(font, &error)
//    }
//}
//
//
//
