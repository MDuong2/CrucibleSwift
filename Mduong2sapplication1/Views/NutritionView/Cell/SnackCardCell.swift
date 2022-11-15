import SwiftUI

struct SnackCardCell: View {
    var body: some View {
        HStack {
            HStack {
                Image("img_bg_3")
                    .resizable()
                    .frame(width: getRelativeWidth(58.0), height: getRelativeWidth(60.0),
                           alignment: .leading)
                    .scaledToFit()
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLblOrange)
                        .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Gray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(52.0), height: getRelativeHeight(15.0),
                               alignment: .leading)
                    Text(StringConstants.kLbl0430pm)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Gray600)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(51.0), height: getRelativeHeight(13.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(7.0))
                }
                .frame(width: getRelativeWidth(52.0), height: getRelativeHeight(36.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(10.0))
            }
            .frame(width: getRelativeWidth(122.0), height: getRelativeHeight(60.0),
                   alignment: .leading)
            Image("img_arrowrightc")
                .resizable()
                .frame(width: getRelativeWidth(16.0), height: getRelativeWidth(18.0),
                       alignment: .leading)
                .scaledToFit()
                .padding(.leading, getRelativeWidth(169.0))
        }
        .frame(width: getRelativeWidth(310.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct SnackCardCell_Previews: PreviewProvider {

 static var previews: some View {
 			SnackCardCell()
 }
 } */
