import SwiftUI

struct LoginPageView: View {
    @StateObject var loginPageViewModel = LoginPageViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
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
                .padding(.leading, getRelativeWidth(20.0))
                .padding(.trailing, getRelativeWidth(15.0))
                Text(StringConstants.kLblHeyThere)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(16.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Gray900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(80.0), height: getRelativeHeight(17.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(36.0))
                    .padding(.horizontal, getRelativeWidth(20.0))
                Text(StringConstants.kLblWelcomeBack)
                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(20.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.Gray900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(154.0), height: getRelativeHeight(20.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(9.0))
                    .padding(.horizontal, getRelativeWidth(20.0))
                VStack(alignment: .leading, spacing: 0) {
                    Group {
                        HStack {
                            Spacer()
                            Image("img_message")
                                .resizable()
                                .frame(width: getRelativeWidth(15.0),
                                       height: getRelativeHeight(13.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(17.0))
                                .padding(.leading, getRelativeWidth(16.0))
                                .padding(.trailing, getRelativeWidth(11.0))
                            TextField(StringConstants.kLblEmail,
                                      text: $loginPageViewModel.labelText)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .foregroundColor(ColorConstants.Gray500)
                                .padding()
                                .keyboardType(.emailAddress)
                        }
                        .onChange(of: loginPageViewModel.labelText) { newValue in

                            loginPageViewModel.isValidLabelText = newValue
                                .isValidEmail(isMandatory: true)
                        }
                        .frame(width: getRelativeWidth(315.0), height: getRelativeHeight(48.0),
                               alignment: .leading)
                        .overlay(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                bottomRight: 14.0)
                                .stroke(ColorConstants.Gray50,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                   bottomRight: 14.0)
                                .fill(ColorConstants.Gray50))
                        if !loginPageViewModel.isValidLabelText {
                            Text("Please enter valid email.")
                                .foregroundColor(Color.red)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .frame(width: getRelativeWidth(315.0),
                                       height: getRelativeHeight(48.0), alignment: .leading)
                        }
                    }
                    Group {
                        HStack {
                            Spacer()
                            Image("img_lock")
                                .resizable()
                                .frame(width: getRelativeWidth(11.0),
                                       height: getRelativeHeight(13.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(17.0))
                                .padding(.leading, getRelativeWidth(18.0))
                                .padding(.trailing, getRelativeWidth(13.0))
                            SecureField(StringConstants.kLblPassword,
                                        text: $loginPageViewModel.labeloneText)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .foregroundColor(ColorConstants.Gray500)
                                .padding()
                                .keyboardType(.default)
                            Image("img_hide")
                                .resizable()
                                .frame(width: getRelativeWidth(13.0),
                                       height: getRelativeHeight(11.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(18.0))
                                .padding(.bottom, getRelativeHeight(17.0))
                                .padding(.leading, getRelativeWidth(30.0))
                                .padding(.trailing, getRelativeWidth(17.0))
                            Spacer()
                        }
                        .onChange(of: loginPageViewModel.labeloneText) { newValue in

                            loginPageViewModel.isValidLabeloneText = newValue
                                .isValidPassword(isMandatory: true)
                        }
                        .frame(width: getRelativeWidth(315.0), height: getRelativeHeight(48.0),
                               alignment: .leading)
                        .overlay(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                bottomRight: 14.0)
                                .stroke(ColorConstants.Gray50,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                   bottomRight: 14.0)
                                .fill(ColorConstants.Gray50))
                        .padding(.top, getRelativeHeight(15.0))
                        if !loginPageViewModel.isValidLabeloneText {
                            Text("Please enter valid password.")
                                .foregroundColor(Color.red)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .frame(width: getRelativeWidth(315.0),
                                       height: getRelativeHeight(48.0), alignment: .leading)
                        }
                    }
                    HStack {
                        Image("img_checkmarkcircl")
                            .resizable()
                            .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(20.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Text(StringConstants.kLblRememberMe)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Gray500)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(88.0), height: getRelativeHeight(12.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(4.0))
                            .padding(.leading, getRelativeWidth(4.0))
                    }
                    .frame(width: getRelativeWidth(112.0), height: getRelativeHeight(20.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(19.0))
                    .padding(.trailing, getRelativeWidth(10.0))
                    Text(StringConstants.kMsgForgotYourPas)
                        .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Gray500)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(138.0), height: getRelativeHeight(13.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(61.0))
                        .padding(.horizontal, getRelativeWidth(43.0))
                }
                .frame(width: getRelativeWidth(315.0), height: getRelativeHeight(225.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(47.0))
                .padding(.horizontal, getRelativeWidth(20.0))
                HStack {
                    Image("img_login")
                        .resizable()
                        .frame(width: getRelativeWidth(19.0), height: getRelativeHeight(20.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.vertical, getRelativeHeight(20.0))
                        .padding(.leading, getRelativeWidth(120.0))
                    Text(StringConstants.kLblLogin2)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.WhiteA701)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(45.0), height: getRelativeHeight(18.0),
                               alignment: .topLeading)
                        .padding(.vertical, getRelativeHeight(23.0))
                        .padding(.leading, getRelativeWidth(12.0))
                        .padding(.trailing, getRelativeWidth(118.0))
                }
                .frame(width: getRelativeWidth(315.0), height: getRelativeHeight(60.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 30.0, topRight: 30.0, bottomLeft: 30.0,
                                           bottomRight: 30.0)
                        .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants.IndigoA100,
                                                                         ColorConstants.Blue200]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)))
                .padding(.top, getRelativeHeight(164.0))
                .padding(.horizontal, getRelativeWidth(20.0))
                HStack {
                    Divider()
                        .frame(width: getRelativeWidth(141.0), height: getRelativeHeight(1.0),
                               alignment: .bottom)
                        .background(ColorConstants.Gray300)
                        .padding(.top, getRelativeHeight(6.0))
                        .padding(.bottom, getRelativeHeight(4.0))
                    Text(StringConstants.kLblOr)
                        .font(FontScheme.kInterRegular(size: getRelativeHeight(12.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Gray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(14.0), height: getRelativeHeight(12.0),
                               alignment: .topLeading)
                        .padding(.leading, getRelativeWidth(10.0))
                    Divider()
                        .frame(width: getRelativeWidth(140.0), height: getRelativeHeight(1.0),
                               alignment: .bottom)
                        .background(ColorConstants.Gray300)
                        .padding(.top, getRelativeHeight(6.0))
                        .padding(.bottom, getRelativeHeight(4.0))
                        .padding(.leading, getRelativeWidth(10.0))
                    Spacer()
                }
                .frame(width: getRelativeWidth(315.0), height: getRelativeHeight(12.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(22.0))
                .padding(.horizontal, getRelativeWidth(20.0))
                Text(StringConstants.kMsgDonTHaveAnA)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(14.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Gray900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(253.0), height: getRelativeHeight(16.0),
                           alignment: .topLeading)
                    .padding(.vertical, getRelativeHeight(62.0))
                    .padding(.horizontal, getRelativeWidth(20.0))
            }
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

struct LoginPageView_Previews: PreviewProvider {
    static var previews: some View {
        LoginPageView()
    }
}
