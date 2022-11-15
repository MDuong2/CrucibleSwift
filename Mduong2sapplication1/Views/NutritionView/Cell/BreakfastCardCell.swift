import SwiftUI

struct BreakfastCardCell: View {
    var body: some View {
        HStack {
            HStack {
                Image("img_bg")
                    .resizable()
                    .frame(width: getRelativeWidth(58.0), height: getRelativeWidth(60.0),
                           alignment: .leading)
                    .scaledToFit()
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLblHoneyPancake)
                        .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Gray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(108.0), height: getRelativeHeight(16.0),
                               alignment: .leading)
                    Text(StringConstants.kLbl0700am)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Gray600)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(51.0), height: getRelativeHeight(12.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(5.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                }
                .frame(width: getRelativeWidth(108.0), height: getRelativeHeight(34.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(10.0))
            }
            .frame(width: getRelativeWidth(178.0), height: getRelativeHeight(60.0),
                   alignment: .leading)
            Image("img_arrowrightc")
                .resizable()
                .frame(width: getRelativeWidth(16.0), height: getRelativeWidth(18.0),
                       alignment: .leading)
                .scaledToFit()
                .padding(.leading, getRelativeWidth(113.0))
        }
        .frame(width: getRelativeWidth(310.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct BreakfastCardCell_Previews: PreviewProvider {

 static var previews: some View {
 			BreakfastCardCell()
 }
 } */
