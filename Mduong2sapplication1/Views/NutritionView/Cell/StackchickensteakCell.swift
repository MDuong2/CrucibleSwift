import SwiftUI

struct StackchickensteakCell: View {
    var body: some View {
        ZStack(alignment: .leading) {
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLblChickenSteak)
                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Gray900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(99.0), height: getRelativeHeight(14.0),
                           alignment: .leading)
                Text(StringConstants.kLbl0100pm)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Gray600)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(48.0), height: getRelativeHeight(13.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(11.0))
                    .padding(.trailing, getRelativeWidth(10.0))
            }
            .frame(width: getRelativeWidth(99.0), height: getRelativeHeight(39.0),
                   alignment: .leading)
            .padding(.top, getRelativeHeight(11.68))
            .padding(.trailing, getRelativeWidth(141.0))
            HStack {
                Image("img_bg_1")
                    .resizable()
                    .frame(width: getRelativeWidth(58.0), height: getRelativeWidth(60.0),
                           alignment: .leading)
                    .scaledToFit()
                Image("img_arrowrightc")
                    .resizable()
                    .frame(width: getRelativeWidth(16.0), height: getRelativeWidth(18.0),
                           alignment: .leading)
                    .scaledToFit()
                    .padding(.leading, getRelativeWidth(233.0))
            }
            .frame(width: getRelativeWidth(310.0), height: getRelativeHeight(60.0),
                   alignment: .leading)
        }
        .hideNavigationBar()
        .frame(width: getRelativeWidth(310.0), alignment: .leading)
    }
}

/* struct StackchickensteakCell_Previews: PreviewProvider {

 static var previews: some View {
 			StackchickensteakCell()
 }
 } */
