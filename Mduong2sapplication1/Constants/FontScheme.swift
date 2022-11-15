import Foundation
import SwiftUI

class FontScheme: NSObject {
    static func kPoppinsBlack(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsBlack, size: size)
    }

    static func kPoppinsRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsRegular, size: size)
    }

    static func kPoppinsBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsBold, size: size)
    }

    static func kPoppinsMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsMedium, size: size)
    }

    static func kPoppinsSemiBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsSemiBold, size: size)
    }

    static func kRobotoSerifRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRobotoSerifRegular, size: size)
    }

    static func kRobotoSerifNormalRomanBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRobotoSerifNormalRomanBold, size: size)
    }

    static func kInterRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterRegular, size: size)
    }

    static func kInterMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterMedium, size: size)
    }

    static func kSFProSemiboldItalic(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProSemiboldItalic, size: size)
    }

    static func kSFProBoldItalic(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProBoldItalic, size: size)
    }

    static func fontFromConstant(fontName: String, size: CGFloat) -> Font {
        var result = Font.system(size: size)

        switch fontName {
        case "kPoppinsBlack":
            result = self.kPoppinsBlack(size: size)
        case "kPoppinsRegular":
            result = self.kPoppinsRegular(size: size)
        case "kPoppinsBold":
            result = self.kPoppinsBold(size: size)
        case "kPoppinsMedium":
            result = self.kPoppinsMedium(size: size)
        case "kPoppinsSemiBold":
            result = self.kPoppinsSemiBold(size: size)
        case "kRobotoSerifRegular":
            result = self.kRobotoSerifRegular(size: size)
        case "kRobotoSerifNormalRomanBold":
            result = self.kRobotoSerifNormalRomanBold(size: size)
        case "kInterRegular":
            result = self.kInterRegular(size: size)
        case "kInterMedium":
            result = self.kInterMedium(size: size)
        case "kSFProSemiboldItalic":
            result = self.kSFProSemiboldItalic(size: size)
        case "kSFProBoldItalic":
            result = self.kSFProBoldItalic(size: size)
        default:
            result = self.kPoppinsBlack(size: size)
        }
        return result
    }

    enum FontConstant {
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsBlack: String = "Poppins-Black"
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsRegular: String = "Poppins-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsBold: String = "Poppins-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsMedium: String = "Poppins-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsSemiBold: String = "Poppins-SemiBold"
        /**
         * Please Add this fonts Manually
         */
        static let kRobotoSerifRegular: String = "RobotoSerifRegular"
        /**
         * Please Add this fonts Manually
         */
        static let kRobotoSerifNormalRomanBold: String = "RobotoSerifNormalRoman-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kInterRegular: String = "InterRegular"
        /**
         * Please Add this fonts Manually
         */
        static let kInterMedium: String = "Inter-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kSFProSemiboldItalic: String = "SFPro-SemiboldItalic"
        /**
         * Please Add this fonts Manually
         */
        static let kSFProBoldItalic: String = "SFPro-BoldItalic"
    }
}
