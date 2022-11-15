import SwiftUI

struct NotificationView: View {
    @StateObject var notificationViewModel = NotificationViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            ZStack {
                VStack(alignment: .trailing, spacing: 0) {
                    HStack {
                        HStack {
                            Spacer()
                            VStack {
                                Image("img_time")
                                    .resizable()
                                    .frame(width: getRelativeWidth(28.0),
                                           height: getRelativeHeight(11.0), alignment: .center)
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .clipShape(Capsule())
                                    .padding(.top, getRelativeHeight(5.0))
                                    .padding(.bottom, getRelativeHeight(4.0))
                                    .padding(.horizontal, getRelativeWidth(12.0))
                            }
                            .frame(width: getRelativeWidth(54.0), height: getRelativeHeight(21.0),
                                   alignment: .bottom)
                            .clipShape(Capsule())
                            .padding(.top, getRelativeHeight(12.0))
                            Spacer()
                            ZStack(alignment: .bottomTrailing) {
                                Image("img_notch")
                                    .resizable()
                                    .frame(width: getRelativeWidth(219.0),
                                           height: getRelativeHeight(28.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.trailing, getRelativeWidth(63.0))
                                Image("img_rightside")
                                    .resizable()
                                    .frame(width: getRelativeWidth(66.0),
                                           height: getRelativeHeight(11.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(17.33))
                                    .padding(.leading, getRelativeWidth(215.67))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(282.0), height: getRelativeHeight(28.0),
                                   alignment: .top)
                            .padding(.bottom, getRelativeHeight(4.0))
                            Spacer()
                        }
                        .frame(width: getRelativeWidth(339.0), height: getRelativeHeight(33.0),
                               alignment: .leading)
                    }
                    .frame(width: getRelativeWidth(339.0), height: getRelativeHeight(33.0),
                           alignment: .leading)
                    HStack {
                        Text(StringConstants.kLblNotification)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Gray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(97.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                            .padding(.bottom, getRelativeHeight(27.0))
                        Button(action: {}, label: {
                            Image("img_detailnavs")
                        })
                        .frame(width: getRelativeWidth(32.0), height: getRelativeWidth(32.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                   bottomRight: 8.0)
                                .fill(ColorConstants.Gray50))
                        .padding(.top, getRelativeHeight(11.0))
                        .padding(.leading, getRelativeWidth(92.0))
                    }
                    .frame(width: getRelativeWidth(221.0), height: getRelativeHeight(43.0),
                           alignment: .trailing)
                    .padding(.top, getRelativeHeight(14.0))
                    .padding(.leading, getRelativeWidth(10.0))
                    VStack(spacing: 0) {
                        ScrollView(.vertical, showsIndicators: false) {
                            LazyVStack {
                                ForEach(0 ... 4, id: \.self) { index in
                                    NotificationCaCell()
                                }
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(306.0), alignment: .leading)
                    .padding(.top, getRelativeHeight(11.0))
                    .padding(.leading, getRelativeWidth(10.0))
                    .padding(.trailing, getRelativeWidth(24.0))
                    Divider()
                        .frame(width: getRelativeWidth(315.0), height: getRelativeHeight(1.0),
                               alignment: .center)
                        .background(ColorConstants.Gray300)
                        .padding(.top, getRelativeHeight(14.0))
                        .padding(.horizontal, getRelativeWidth(9.0))
                }
                .frame(width: getRelativeWidth(340.0), height: getRelativeHeight(435.0),
                       alignment: .center)
                .padding(.leading, getRelativeWidth(20.0))
                .padding(.trailing, getRelativeWidth(15.0))
            }
            .hideNavigationBar()
            .frame(width: getRelativeWidth(375.0), alignment: .topLeading)
            .background(ColorConstants.WhiteA701)
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA701)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
