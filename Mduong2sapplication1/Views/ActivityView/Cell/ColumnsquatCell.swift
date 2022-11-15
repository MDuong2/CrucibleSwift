import SwiftUI

struct ColumnsquatCell: View {
    var body: some View {
        VStack {
            Text(StringConstants.kLblSquat)
                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                .fontWeight(.bold)
                .foregroundColor(ColorConstants.Gray900)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(35.0), height: getRelativeHeight(12.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(13.0))
                .padding(.horizontal, getRelativeWidth(128.0))
            HStack {
                ZStack(alignment: .leading) {
                    Image("img_rectangle5876")
                        .resizable()
                        .frame(width: getRelativeWidth(62.0), height: getRelativeHeight(36.0),
                               alignment: .leading)
                        .scaledToFit()
                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                   bottomRight: 12.0))
                        .padding(.bottom, getRelativeHeight(7.94))
                    Text(StringConstants.kLblSetsXRep)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Gray500)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(18.0), height: getRelativeHeight(46.0),
                               alignment: .leading)
                        .padding(.leading, getRelativeWidth(18.0))
                        .padding(.trailing, getRelativeWidth(26.0))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(62.0), height: getRelativeHeight(46.0),
                       alignment: .leading)
                ZStack(alignment: .trailing) {
                    Image("img_rectangle5876")
                        .resizable()
                        .frame(width: getRelativeWidth(62.0), height: getRelativeHeight(36.0),
                               alignment: .leading)
                        .scaledToFit()
                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                   bottomRight: 12.0))
                        .padding(.bottom, getRelativeHeight(5.94))
                    Text(StringConstants.kLblSetsXRep)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Gray500)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(18.0), height: getRelativeHeight(46.0),
                               alignment: .leading)
                        .padding(.leading, getRelativeWidth(24.0))
                        .padding(.trailing, getRelativeWidth(20.0))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(62.0), height: getRelativeHeight(46.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(20.0))
                ZStack(alignment: .trailing) {
                    Image("img_rectangle5876")
                        .resizable()
                        .frame(width: getRelativeWidth(62.0), height: getRelativeHeight(36.0),
                               alignment: .leading)
                        .scaledToFit()
                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                   bottomRight: 12.0))
                        .padding(.bottom, getRelativeHeight(5.94))
                    Text(StringConstants.kLblSetsXRep)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Gray500)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(18.0), height: getRelativeHeight(46.0),
                               alignment: .leading)
                        .padding(.leading, getRelativeWidth(24.0))
                        .padding(.trailing, getRelativeWidth(20.0))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(62.0), height: getRelativeHeight(46.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(29.0))
                Spacer()
            }
            .frame(width: getRelativeWidth(239.0), height: getRelativeHeight(46.0),
                   alignment: .leading)
            .padding(.horizontal, getRelativeWidth(31.0))
            HStack {
                Text(StringConstants.kLbl1)
                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.Gray900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(3.0), height: getRelativeHeight(12.0),
                           alignment: .leading)
                Text(StringConstants.kLbl22)
                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.Gray900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(5.0), height: getRelativeHeight(12.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(79.0))
                Text(StringConstants.kLbl32)
                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.Gray900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(6.0), height: getRelativeHeight(12.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(87.0))
                Spacer()
            }
            .frame(width: getRelativeWidth(184.0), height: getRelativeHeight(12.0),
                   alignment: .leading)
            .padding(.vertical, getRelativeHeight(13.0))
            .padding(.horizontal, getRelativeWidth(58.0))
        }
        .frame(width: getRelativeWidth(313.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                   bottomRight: 16.0)
                .fill(ColorConstants.Blue50))
        .shadow(color: ColorConstants.Gray90011, radius: 40, x: 0, y: 10)
        .hideNavigationBar()
    }
}

/* struct ColumnsquatCell_Previews: PreviewProvider {

 static var previews: some View {
 			ColumnsquatCell()
 }
 } */
