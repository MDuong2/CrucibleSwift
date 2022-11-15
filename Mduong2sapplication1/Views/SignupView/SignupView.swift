import SwiftUI

struct SignupView: View {
    @StateObject var signupViewModel = SignupViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                VStack {
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
                    .padding(.leading, getRelativeWidth(4.0))
                }
                .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(33.0),
                       alignment: .center)
                .padding(.leading, getRelativeWidth(17.0))
                .padding(.trailing, getRelativeWidth(14.0))
                VStack(alignment: .leading, spacing: 0) {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image("img_arrowleft")
                    })
                    .frame(width: getRelativeWidth(42.0), height: getRelativeHeight(40.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 9.0, topRight: 9.0, bottomLeft: 9.0,
                                               bottomRight: 9.0)
                            .fill(ColorConstants.IndigoA20059))
                    .padding(.trailing)
                }
                .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(40.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(26.0))
                .padding(.leading, getRelativeWidth(17.0))
                .padding(.trailing, getRelativeWidth(14.0))
                VStack(alignment: .trailing, spacing: 0) {
                    Text(StringConstants.kMsgCreateAccount)
                        .font(FontScheme.kRobotoSerifNormalRomanBold(size: getRelativeHeight(30.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(244.0), height: getRelativeHeight(59.0),
                               alignment: .topLeading)
                        .padding(.horizontal, getRelativeWidth(41.0))
                }
                .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(59.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(76.0))
                .padding(.leading, getRelativeWidth(17.0))
                .padding(.trailing, getRelativeWidth(14.0))
                VStack {
                    Image("img_icons8dumbbell")
                        .resizable()
                        .frame(width: getRelativeWidth(133.0), height: getRelativeHeight(100.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.horizontal, getRelativeWidth(46.0))
                    ZStack(alignment: .topLeading) {
                        ZStack {}
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(253.0), height: getRelativeHeight(32.0),
                                   alignment: .bottomLeading)
                            .background(ColorConstants.IndigoA100)
                            .padding(.top, getRelativeHeight(11.67))
                        Text(StringConstants.kLblName)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(36.0), height: getRelativeHeight(12.0),
                                   alignment: .topLeading)
                            .padding(.bottom, getRelativeHeight(31.0))
                            .padding(.trailing, getRelativeWidth(212.0))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(253.0), height: getRelativeHeight(43.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(74.0))
                    .padding(.horizontal, getRelativeWidth(46.0))
                }
                .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(218.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(42.0))
                .padding(.leading, getRelativeWidth(17.0))
                .padding(.trailing, getRelativeWidth(14.0))
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLblEmail)
                        .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(32.0), height: getRelativeHeight(12.0),
                               alignment: .topLeading)
                        .padding(.horizontal, getRelativeWidth(51.0))
                }
                .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(12.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(32.0))
                .padding(.leading, getRelativeWidth(17.0))
                .padding(.trailing, getRelativeWidth(14.0))
                VStack {
                    ZStack {}
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(254.0), height: getRelativeHeight(32.0),
                               alignment: .center)
                        .background(ColorConstants.IndigoA100)
                        .padding(.horizontal, getRelativeWidth(42.0))
                    ZStack(alignment: .topLeading) {
                        ZStack {}
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(254.0), height: getRelativeHeight(32.0),
                                   alignment: .bottomLeading)
                            .background(ColorConstants.IndigoA100)
                            .padding(.top, getRelativeHeight(11.94))
                        Text(StringConstants.kLblPassword)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(57.0), height: getRelativeHeight(12.0),
                                   alignment: .topLeading)
                            .padding(.bottom, getRelativeHeight(31.0))
                            .padding(.trailing, getRelativeWidth(191.0))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(254.0), height: getRelativeHeight(43.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(27.0))
                    .padding(.horizontal, getRelativeWidth(42.0))
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblCreateAccount)
                                .font(FontScheme
                                    .kRobotoSerifNormalRomanBold(size: getRelativeHeight(12.0)))
                                .fontWeight(.bold)
                                .padding(.horizontal, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(10.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(257.0),
                                       height: getRelativeHeight(32.0), alignment: .topLeading)
                                .background(RoundedCorners(topLeft: 11.0, topRight: 11.0,
                                                           bottomLeft: 11.0, bottomRight: 11.0)
                                        .fill(ColorConstants.BlueA100))
                                .padding(.top, getRelativeHeight(54.0))
                                .padding(.horizontal, getRelativeWidth(42.0))
                        }
                    })
                    .frame(width: getRelativeWidth(257.0), height: getRelativeHeight(32.0),
                           alignment: .topLeading)
                    .background(RoundedCorners(topLeft: 11.0, topRight: 11.0, bottomLeft: 11.0,
                                               bottomRight: 11.0)
                            .fill(ColorConstants.BlueA100))
                    .padding(.top, getRelativeHeight(54.0))
                    .padding(.horizontal, getRelativeWidth(42.0))
                }
                .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(189.0),
                       alignment: .center)
                .padding(.bottom, getRelativeHeight(20.0))
                .padding(.leading, getRelativeWidth(17.0))
                .padding(.trailing, getRelativeWidth(14.0))
            }
            .frame(width: getRelativeWidth(375.0), alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
