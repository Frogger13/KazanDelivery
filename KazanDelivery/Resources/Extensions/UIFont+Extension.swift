//
//  UIFont+Extension.swift
//  KazanDelivery
//
//  Created by Данил Габдуллин on 05.06.2024.
//

import UIKit
import SwiftUI

extension UIFont {
    enum ProjectFonts {
        enum Roboto {
            enum black {
                static func size(of size: CGFloat) -> UIFont {
                    return UIFont(name: CustomFontNames.Roboto.black, size: size) ?? UIFont()
                }
            }
            enum blackItalic {
                static func size(of size: CGFloat) -> UIFont {
                    return UIFont(name: CustomFontNames.Roboto.blackItalic, size: size) ?? UIFont()
                }
            }
            enum bold {
                static func size(of size: CGFloat) -> UIFont {
                    return UIFont(name: CustomFontNames.Roboto.bold, size: size) ?? UIFont()
                }
            }
            enum boldItalic {
                static func size(of size: CGFloat) -> UIFont {
                    return UIFont(name: CustomFontNames.Roboto.boldItalic, size: size) ?? UIFont()
                }
            }
            enum italic {
                static func size(of size: CGFloat) -> UIFont {
                    return UIFont(name: CustomFontNames.Roboto.italic, size: size) ?? UIFont()
                }
            }
            enum light {
                static func size(of size: CGFloat) -> UIFont {
                    return UIFont(name: CustomFontNames.Roboto.light, size: size) ?? UIFont()
                }
            }
            enum lightItalic {
                static func size(of size: CGFloat) -> UIFont {
                    return UIFont(name: CustomFontNames.Roboto.lightItalic, size: size) ?? UIFont()
                }
            }
            enum medium {
                static func size(of size: CGFloat) -> UIFont {
                    return UIFont(name: CustomFontNames.Roboto.medium, size: size) ?? UIFont()
                }
            }
            enum mediumItalic {
                static func size(of size: CGFloat) -> UIFont {
                    return UIFont(name: CustomFontNames.Roboto.mediumItalic, size: size) ?? UIFont()
                }
            }
            enum regular {
                static func size(of size: CGFloat) -> UIFont {
                    return UIFont(name: CustomFontNames.Roboto.regular, size: size) ?? UIFont()
                }
            }
            enum thin {
                static func size(of size: CGFloat) -> UIFont {
                    return UIFont(name: CustomFontNames.Roboto.thin, size: size) ?? UIFont()
                }
            }
            enum thinItalic {
                static func size(of size: CGFloat) -> UIFont {
                    return UIFont(name: CustomFontNames.Roboto.thinItalic, size: size) ?? UIFont()
                }
            }
        }
    }
}

private extension UIFont {
    enum CustomFontNames {
        enum Roboto {
            static let black = "Roboto-Black"
            static let blackItalic = "Roboto-BlackItalic"
            static let bold = "Roboto-Bold"
            static let boldItalic = "Roboto-BoldItalic"
            static let italic = "Roboto-Italic"
            static let light = "Roboto-Light"
            static let lightItalic = "Roboto-LightItalic"
            static let medium = "Roboto-Medium"
            static let mediumItalic = "Roboto-MediumItalic"
            static let regular = "Roboto-Regular"
            static let thin = "Roboto-Thin"
            static let thinItalic = "Roboto-ThinItalic"
        }
    }
}
