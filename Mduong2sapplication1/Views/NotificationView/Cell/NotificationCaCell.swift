import SwiftUI

struct NotificationCaCell: View {
    var body: some View {
        HStack {
            HStack {
                ZStack {
                    Image("img_image1")
                        .resizable()
                        .frame(width: getRelativeWidth(32.0), height: getRelativeWidth(34.0),
                               alignment: .leading)
                        .scaledToFit()
                        .padding(.bottom, getRelativeHeight(5.0))
                        .padding(.horizontal, getRelativeWidth(3.0))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(38.0), height: getRelativeWidth(40.0),
                       alignment: .leading)
                .background(RoundedCorners(topLeft: 20.0, topRight: 20.0, bottomLeft: 20.0,
                                           bottomRight: 20.0)
                        .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                    .IndigoA1006c,
                                ColorConstants.Blue2006c]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)))
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kMsgRememberToDri)
                        .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Gray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(152.0), height: getRelativeHeight(12.0),
                               alignment: .leading)
                    Text(StringConstants.kMsgAbout1Minutes)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Gray600)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(100.0), height: getRelativeHeight(11.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(11.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                }
                .frame(width: getRelativeWidth(152.0), height: getRelativeHeight(35.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(10.0))
            }
            .frame(width: getRelativeWidth(202.0), height: getRelativeHeight(40.0),
                   alignment: .leading)
            Image("img_morevertical5")
                .resizable()
                .frame(width: getRelativeWidth(1.0), height: getRelativeHeight(9.0),
                       alignment: .leading)
                .scaledToFit()
                .padding(.leading, getRelativeWidth(94.0))
                .padding(.trailing, getRelativeWidth(6.0))
        }
        .frame(width: getRelativeWidth(304.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct NotificationCaCell_Previews: PreviewProvider {

 static var previews: some View {
 			NotificationCaCell()
 }
 } */
