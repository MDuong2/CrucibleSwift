import SwiftUI

struct TargetContentCell: View {
    var body: some View {
        HStack {
            Image("img_object")
                .resizable()
                .frame(width: getRelativeWidth(23.0), height: getRelativeHeight(34.0),
                       alignment: .leading)
                .scaledToFit()
                .padding(.leading, getRelativeWidth(9.0))
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLbl6l)
                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.IndigoA102)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(14.0), height: getRelativeHeight(14.0),
                           alignment: .leading)
                    .padding(.trailing)
                Text(StringConstants.kLblWaterIntake)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Gray600)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(75.0), height: getRelativeHeight(12.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(7.0))
            }
            .frame(width: getRelativeWidth(75.0), height: getRelativeHeight(33.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(8.0))
            .padding(.trailing, getRelativeWidth(11.0))
        }
        .frame(width: getRelativeWidth(128.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                   bottomRight: 12.0)
                .fill(ColorConstants.WhiteA701))
        .hideNavigationBar()
    }
}

/* struct TargetContentCell_Previews: PreviewProvider {

 static var previews: some View {
 			TargetContentCell()
 }
 } */
