import SwiftUI

struct FirstGreetingView: View {
    @StateObject var firstGreetingViewModel = FirstGreetingViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
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
                                .frame(width: getRelativeWidth(54.0),
                                       height: getRelativeHeight(21.0), alignment: .bottom)
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
                                .frame(width: getRelativeWidth(282.0),
                                       height: getRelativeHeight(28.0), alignment: .top)
                                .padding(.bottom, getRelativeHeight(4.0))
                                Spacer()
                            }
                            .frame(width: getRelativeWidth(339.0), height: getRelativeHeight(33.0),
                                   alignment: .leading)
                        }
                        .frame(width: getRelativeWidth(339.0), height: getRelativeHeight(33.0),
                               alignment: .leading)
                    }
                    .frame(width: getRelativeWidth(339.0), height: getRelativeHeight(33.0),
                           alignment: .center)
                    .padding(.leading, getRelativeWidth(21.0))
                    .padding(.trailing, getRelativeWidth(14.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblCrucible)
                            .font(FontScheme.kPoppinsBlack(size: getRelativeHeight(35.0)))
                            .fontWeight(.black)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(181.0), height: getRelativeHeight(35.0),
                                   alignment: .topLeading)
                            .padding(.horizontal, getRelativeWidth(63.0))
                        Image("img_icons8dumbbell")
                            .resizable()
                            .frame(width: getRelativeWidth(170.0), height: getRelativeHeight(149.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(52.0))
                            .padding(.horizontal, getRelativeWidth(64.0))
                    }
                    .frame(width: getRelativeWidth(339.0), height: getRelativeHeight(236.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(146.0))
                    .padding(.leading, getRelativeWidth(21.0))
                    .padding(.trailing, getRelativeWidth(14.0))
                    VStack(alignment: .trailing, spacing: 0) {
                        Text(StringConstants.kMsgStartYourFitn)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(30.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(251.0), height: getRelativeHeight(68.0),
                                   alignment: .topLeading)
                            .padding(.horizontal, getRelativeWidth(32.0))
                    }
                    .frame(width: getRelativeWidth(339.0), height: getRelativeHeight(68.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(55.0))
                    .padding(.leading, getRelativeWidth(21.0))
                    .padding(.trailing, getRelativeWidth(14.0))
                    VStack {
                        Text(StringConstants.kMsgAlreadyHaveAn)
                            .font(FontScheme.kRobotoSerifRegular(size: getRelativeHeight(15.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(245.0), height: getRelativeHeight(15.0),
                                   alignment: .topLeading)
                            .padding(.horizontal, getRelativeWidth(38.0))
                        Button(action: {}, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kMsgSignUpWithE)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                                    .fontWeight(.bold)
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(14.0))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(258.0),
                                           height: getRelativeHeight(43.0), alignment: .topLeading)
                                    .background(RoundedCorners(topLeft: 11.0, topRight: 11.0,
                                                               bottomLeft: 11.0, bottomRight: 11.0)
                                            .fill(ColorConstants.BlueA100))
                                    .padding(.top, getRelativeHeight(64.0))
                                    .padding(.horizontal, getRelativeWidth(38.0))
                            }
                        })
                        .frame(width: getRelativeWidth(258.0), height: getRelativeHeight(43.0),
                               alignment: .topLeading)
                        .background(RoundedCorners(topLeft: 11.0, topRight: 11.0, bottomLeft: 11.0,
                                                   bottomRight: 11.0)
                                .fill(ColorConstants.BlueA100))
                        .padding(.top, getRelativeHeight(64.0))
                        .padding(.horizontal, getRelativeWidth(38.0))
                    }
                    .frame(width: getRelativeWidth(339.0), height: getRelativeHeight(123.0),
                           alignment: .center)
                    .padding(.vertical, getRelativeHeight(66.0))
                    .padding(.leading, getRelativeWidth(21.0))
                    .padding(.trailing, getRelativeWidth(14.0))
                }
                .frame(width: getRelativeWidth(375.0), alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: SignupPageTwoView(),
                                   tag: "SignupPageTwoView",
                                   selection: $firstGreetingViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
        .onAppear {
            firstGreetingViewModel.nextScreen = "SignupPageTwoView"
        }
    }
}

struct FirstGreetingView_Previews: PreviewProvider {
    static var previews: some View {
        FirstGreetingView()
    }
}
