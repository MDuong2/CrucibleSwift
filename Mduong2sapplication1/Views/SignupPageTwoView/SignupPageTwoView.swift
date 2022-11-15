import SwiftUI

struct SignupPageTwoView: View {
    @StateObject var signupPageTwoViewModel = SignupPageTwoViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kMsgLetSComplete)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(20.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Gray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(272.0), height: getRelativeHeight(24.0),
                               alignment: .topLeading)
                        .padding(.horizontal, getRelativeWidth(22.0))
                    Text(StringConstants.kMsgItWillHelpUs)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Gray600)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(229.0), height: getRelativeHeight(14.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(8.0))
                        .padding(.horizontal, getRelativeWidth(43.0))
                    Picker(StringConstants.kLblChooseGender,
                           selection: $signupPageTwoViewModel.labelPicker1) {
                        ForEach(signupPageTwoViewModel.labelPicker1Values, id: \.self) { value in
                            Text(value)
                        }
                    }
                    .foregroundColor(ColorConstants.Gray500)
                    .font(.system(size: getRelativeHeight(12)))
                    .pickerStyle(MenuPickerStyle())
                    HStack {
                        Spacer()
                        Image("img_calendar")
                            .resizable()
                            .frame(width: getRelativeWidth(13.0), height: getRelativeHeight(15.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(16.0))
                            .padding(.leading, getRelativeWidth(17.0))
                            .padding(.trailing, getRelativeWidth(12.0))
                        TextField(StringConstants.kLblDateOfBirth,
                                  text: $signupPageTwoViewModel.labeloneText)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                            .foregroundColor(ColorConstants.Gray500)
                            .padding()
                    }
                    .frame(width: getRelativeWidth(315.0), height: getRelativeHeight(48.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                               bottomRight: 14.0)
                            .fill(ColorConstants.Gray50))
                    .padding(.top, getRelativeHeight(15.0))
                    HStack {
                        HStack {
                            Spacer()
                            Image("img_vector")
                                .resizable()
                                .frame(width: getRelativeWidth(12.0),
                                       height: getRelativeHeight(6.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(17.0))
                                .padding(.leading, getRelativeWidth(17.0))
                                .padding(.trailing, getRelativeWidth(12.0))
                            TextField(StringConstants.kLblYourWeight,
                                      text: $signupPageTwoViewModel.groupsixteenText)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .foregroundColor(ColorConstants.Gray500)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(252.0), height: getRelativeHeight(48.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                   bottomRight: 14.0)
                                .fill(ColorConstants.Gray50))
                        Button(action: {}, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblIlbs)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                                    .fontWeight(.medium)
                                    .padding(.trailing, getRelativeWidth(8.0))
                                    .padding(.leading, getRelativeWidth(16.0))
                                    .padding(.vertical, getRelativeHeight(18.0))
                                    .foregroundColor(ColorConstants.WhiteA701)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(48.0),
                                           height: getRelativeWidth(48.0), alignment: .leading)
                                    .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                               bottomLeft: 14.0, bottomRight: 14.0)
                                            .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                        .IndigoA100,
                                                    ColorConstants
                                                        .Pink100]),
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing)))
                                    .padding(.leading, getRelativeWidth(15.0))
                            }
                        })
                        .frame(width: getRelativeWidth(48.0), height: getRelativeWidth(48.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                   bottomRight: 14.0)
                                .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                            .IndigoA100,
                                        ColorConstants
                                            .Pink100]),
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing)))
                        .padding(.leading, getRelativeWidth(15.0))
                    }
                    .frame(width: getRelativeWidth(315.0), height: getRelativeHeight(48.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(15.0))
                    HStack {
                        HStack {
                            Spacer()
                            Image("img_swap")
                                .resizable()
                                .frame(width: getRelativeWidth(13.0),
                                       height: getRelativeHeight(12.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(17.0))
                                .padding(.leading, getRelativeWidth(17.0))
                                .padding(.trailing, getRelativeWidth(12.0))
                            TextField(StringConstants.kLblYourHeight,
                                      text: $signupPageTwoViewModel.groupseventeenText)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .foregroundColor(ColorConstants.Gray500)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(252.0), height: getRelativeHeight(48.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                   bottomRight: 14.0)
                                .fill(ColorConstants.Gray50))
                        Button(action: {}, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblIn)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                                    .fontWeight(.medium)
                                    .padding(.trailing, getRelativeWidth(22.0))
                                    .padding(.leading, getRelativeWidth(14.0))
                                    .padding(.vertical, getRelativeHeight(18.0))
                                    .foregroundColor(ColorConstants.WhiteA701)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(48.0),
                                           height: getRelativeWidth(48.0), alignment: .leading)
                                    .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                               bottomLeft: 14.0, bottomRight: 14.0)
                                            .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                        .IndigoA100,
                                                    ColorConstants
                                                        .Pink100]),
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing)))
                                    .padding(.leading, getRelativeWidth(15.0))
                            }
                        })
                        .frame(width: getRelativeWidth(48.0), height: getRelativeWidth(48.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                   bottomRight: 14.0)
                                .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                            .IndigoA100,
                                        ColorConstants
                                            .Pink100]),
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing)))
                        .padding(.leading, getRelativeWidth(15.0))
                    }
                    .frame(width: getRelativeWidth(315.0), height: getRelativeHeight(48.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(15.0))
                }
                .frame(width: getRelativeWidth(315.0), height: getRelativeHeight(314.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(100.0))
                .padding(.horizontal, getRelativeWidth(28.0))
                VStack {
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblNext)
                                .font(FontScheme
                                    .kRobotoSerifNormalRomanBold(size: getRelativeHeight(12.0)))
                                .fontWeight(.bold)
                                .padding(.horizontal, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(10.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(257.0),
                                       height: getRelativeHeight(32.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 11.0, topRight: 11.0,
                                                           bottomLeft: 11.0, bottomRight: 11.0)
                                        .fill(ColorConstants.BlueA100))
                                .padding(.leading, getRelativeWidth(43.0))
                                .padding(.trailing, getRelativeWidth(15.0))
                        }
                    })
                    .frame(width: getRelativeWidth(257.0), height: getRelativeHeight(32.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 11.0, topRight: 11.0, bottomLeft: 11.0,
                                               bottomRight: 11.0)
                            .fill(ColorConstants.BlueA100))
                    .padding(.leading, getRelativeWidth(43.0))
                    .padding(.trailing, getRelativeWidth(15.0))
                }
                .frame(width: getRelativeWidth(315.0), height: getRelativeHeight(32.0),
                       alignment: .leading)
                .padding(.vertical, getRelativeHeight(291.0))
                .padding(.horizontal, getRelativeWidth(28.0))
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
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

struct SignupPageTwoView_Previews: PreviewProvider {
    static var previews: some View {
        SignupPageTwoView()
    }
}
