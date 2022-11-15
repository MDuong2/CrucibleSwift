import SwiftUI

struct SettingsView: View {
    @StateObject var settingsViewModel = SettingsViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            ZStack {
                VStack(alignment: .trailing, spacing: 0) {
                    HStack {
                        HStack {
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
                            Spacer()
                            Text(StringConstants.kLblSettings)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(68.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(9.0))
                                .padding(.bottom, getRelativeHeight(12.0))
                            Spacer()
                            Button(action: {}, label: {
                                Image("img_detailnavs")
                            })
                            .frame(width: getRelativeWidth(32.0), height: getRelativeWidth(32.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0)
                                    .fill(ColorConstants.Gray50))
                            .padding(.bottom, getRelativeHeight(8.0))
                        }
                        .frame(width: getRelativeWidth(318.0), height: getRelativeHeight(40.0),
                               alignment: .leading)
                    }
                    .frame(width: getRelativeWidth(318.0), height: getRelativeHeight(40.0),
                           alignment: .leading)
                    .padding(.horizontal, getRelativeWidth(27.0))
                    HStack {
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLbl180cm)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.IndigoA102)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(46.0),
                                       height: getRelativeHeight(14.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(21.0))
                                .padding(.horizontal, getRelativeWidth(22.0))
                            Text(StringConstants.kLblHeight)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray600)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(39.0),
                                       height: getRelativeHeight(14.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(8.0))
                                .padding(.bottom, getRelativeHeight(6.0))
                                .padding(.horizontal, getRelativeWidth(25.0))
                        }
                        .frame(width: getRelativeWidth(95.0), height: getRelativeHeight(65.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                                   bottomRight: 16.0)
                                .fill(ColorConstants.WhiteA701))
                        .shadow(color: ColorConstants.Gray90011, radius: 40, x: 0, y: 10)
                        VStack {
                            Text(StringConstants.kLbl65kg)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.IndigoA102)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(36.0),
                                       height: getRelativeHeight(16.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(22.0))
                                .padding(.horizontal, getRelativeWidth(28.0))
                            Text(StringConstants.kLblWeight)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray600)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(43.0),
                                       height: getRelativeHeight(14.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(5.0))
                                .padding(.bottom, getRelativeHeight(6.0))
                                .padding(.horizontal, getRelativeWidth(24.0))
                        }
                        .frame(width: getRelativeWidth(95.0), height: getRelativeHeight(65.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                                   bottomRight: 16.0)
                                .fill(ColorConstants.WhiteA701))
                        .shadow(color: ColorConstants.Gray90011, radius: 40, x: 0, y: 10)
                        .padding(.leading, getRelativeWidth(15.0))
                        ZStack(alignment: .center) {
                            Image("img_rectangle5883")
                                .resizable()
                                .frame(width: getRelativeWidth(95.0),
                                       height: getRelativeHeight(65.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                           bottomLeft: 16.0, bottomRight: 16.0))
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kLbl22yo)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.IndigoA102)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(34.0),
                                           height: getRelativeHeight(16.0), alignment: .topLeading)
                                Text(StringConstants.kLblAge)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray600)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(24.0),
                                           height: getRelativeHeight(13.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(12.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                            }
                            .frame(width: getRelativeWidth(34.0), height: getRelativeHeight(42.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(16.58))
                            .padding(.horizontal, getRelativeWidth(30.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(95.0), height: getRelativeHeight(65.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                                   bottomRight: 16.0))
                        .padding(.leading, getRelativeWidth(12.0))
                        Spacer()
                    }
                    .frame(width: getRelativeWidth(312.0), height: getRelativeHeight(66.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(34.0))
                    .padding(.horizontal, getRelativeWidth(27.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblAccount)
                            .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Gray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(69.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(24.0))
                            .padding(.horizontal, getRelativeWidth(20.0))
                        HStack {
                            HStack {
                                Image("img_person1")
                                    .resizable()
                                    .frame(width: getRelativeWidth(12.0),
                                           height: getRelativeHeight(17.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Text(StringConstants.kLblPersonalData)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray600)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(84.0),
                                           height: getRelativeHeight(12.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(14.0))
                            }
                            .frame(width: getRelativeWidth(110.0), height: getRelativeHeight(17.0),
                                   alignment: .center)
                            Spacer()
                            Image("img_arrowright")
                                .resizable()
                                .frame(width: getRelativeWidth(5.0),
                                       height: getRelativeHeight(10.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                        }
                        .frame(width: getRelativeWidth(269.0), height: getRelativeHeight(17.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(18.0))
                        .padding(.horizontal, getRelativeWidth(14.0))
                        HStack {
                            HStack {
                                Image("img_chartbardoch")
                                    .resizable()
                                    .frame(width: getRelativeWidth(20.0),
                                           height: getRelativeHeight(28.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Text(StringConstants.kMsgActivityHistor)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray600)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(88.0),
                                           height: getRelativeHeight(13.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(11.0))
                            }
                            .frame(width: getRelativeWidth(119.0), height: getRelativeHeight(28.0),
                                   alignment: .center)
                            Spacer()
                            Image("img_arrowright")
                                .resizable()
                                .frame(width: getRelativeWidth(5.0),
                                       height: getRelativeHeight(10.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(12.0))
                        }
                        .frame(width: getRelativeWidth(274.0), height: getRelativeHeight(28.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(9.0))
                        .padding(.horizontal, getRelativeWidth(14.0))
                        HStack {
                            HStack {
                                Image("img_chartlineuptr")
                                    .resizable()
                                    .frame(width: getRelativeWidth(26.0),
                                           height: getRelativeHeight(23.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Text(StringConstants.kMsgWorkoutProgres)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray600)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(105.0),
                                           height: getRelativeHeight(13.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(10.0))
                            }
                            .frame(width: getRelativeWidth(141.0), height: getRelativeHeight(24.0),
                                   alignment: .center)
                            Spacer()
                            Image("img_arrowright")
                                .resizable()
                                .frame(width: getRelativeWidth(5.0),
                                       height: getRelativeHeight(10.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(10.0))
                        }
                        .frame(width: getRelativeWidth(279.0), height: getRelativeHeight(24.0),
                               alignment: .center)
                        .padding(.vertical, getRelativeHeight(9.0))
                        .padding(.horizontal, getRelativeWidth(14.0))
                    }
                    .frame(width: getRelativeWidth(315.0), height: getRelativeHeight(186.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                               bottomRight: 16.0)
                            .fill(ColorConstants.WhiteA701))
                    .shadow(color: ColorConstants.Gray90011, radius: 40, x: 0, y: 10)
                    .padding(.top, getRelativeHeight(15.0))
                    .padding(.horizontal, getRelativeWidth(27.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblNotification)
                            .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Gray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(95.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(23.0))
                            .padding(.horizontal, getRelativeWidth(20.0))
                        HStack {
                            HStack {
                                Image("img_notificationbg")
                                    .resizable()
                                    .frame(width: getRelativeWidth(15.0),
                                           height: getRelativeHeight(19.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Text(StringConstants.kMsgPopUpNotifica)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray600)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(117.0),
                                           height: getRelativeHeight(13.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(10.0))
                            }
                            .frame(width: getRelativeWidth(142.0), height: getRelativeHeight(20.0),
                                   alignment: .center)
                            Spacer()
                            Toggle("", isOn: $settingsViewModel.isToggle)
                                .toggleStyle(SwitchToggleStyle(tint: ColorConstants.WhiteA701))
                                .frame(width: getRelativeWidth(36.0),
                                       height: getRelativeHeight(17.0), alignment: .bottom)
                        }
                        .frame(width: getRelativeWidth(275.0), height: getRelativeHeight(20.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(17.0))
                        .padding(.bottom, getRelativeHeight(20.0))
                        .padding(.leading, getRelativeWidth(20.0))
                        .padding(.trailing, getRelativeWidth(15.0))
                    }
                    .frame(width: getRelativeWidth(315.0), height: getRelativeHeight(97.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                               bottomRight: 16.0)
                            .fill(ColorConstants.WhiteA701))
                    .shadow(color: ColorConstants.Gray90011, radius: 40, x: 0, y: 10)
                    .padding(.top, getRelativeHeight(14.0))
                    .padding(.horizontal, getRelativeWidth(27.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblOther)
                            .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Gray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(46.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(23.0))
                            .padding(.horizontal, getRelativeWidth(20.0))
                        HStack {
                            HStack {
                                Image("img_envelope1")
                                    .resizable()
                                    .frame(width: getRelativeWidth(20.0),
                                           height: getRelativeHeight(13.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Text(StringConstants.kLblContactUs)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray600)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(67.0),
                                           height: getRelativeHeight(12.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(7.0))
                            }
                            .frame(width: getRelativeWidth(94.0), height: getRelativeHeight(14.0),
                                   alignment: .center)
                            Spacer()
                            Image("img_arrowright")
                                .resizable()
                                .frame(width: getRelativeWidth(5.0),
                                       height: getRelativeHeight(10.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                        }
                        .frame(width: getRelativeWidth(270.0), height: getRelativeHeight(14.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(22.0))
                        .padding(.horizontal, getRelativeWidth(20.0))
                        HStack {
                            HStack {
                                Image("img_lock1")
                                    .resizable()
                                    .frame(width: getRelativeWidth(20.0),
                                           height: getRelativeHeight(24.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Text(StringConstants.kLblPrivacyPolicy)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray600)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(82.0),
                                           height: getRelativeHeight(13.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(7.0))
                            }
                            .frame(width: getRelativeWidth(109.0), height: getRelativeHeight(24.0),
                                   alignment: .center)
                            Spacer()
                            Image("img_arrowright")
                                .resizable()
                                .frame(width: getRelativeWidth(5.0),
                                       height: getRelativeHeight(10.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(6.0))
                        }
                        .frame(width: getRelativeWidth(270.0), height: getRelativeHeight(24.0),
                               alignment: .center)
                        .padding(.vertical, getRelativeHeight(21.0))
                        .padding(.horizontal, getRelativeWidth(20.0))
                    }
                    .frame(width: getRelativeWidth(315.0), height: getRelativeHeight(157.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                               bottomRight: 16.0)
                            .fill(ColorConstants.WhiteA701))
                    .shadow(color: ColorConstants.Gray90011, radius: 40, x: 0, y: 10)
                    .padding(.top, getRelativeHeight(14.0))
                    .padding(.horizontal, getRelativeWidth(27.0))
                    VStack {
                        HStack {
                            HStack {
                                Text(StringConstants.kLbl2)
                                    .font(FontScheme
                                        .kSFProSemiboldItalic(size: getRelativeHeight(20.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(26.0),
                                           height: getRelativeHeight(21.0), alignment: .topLeading)
                                Text(StringConstants.kLbl3)
                                    .font(FontScheme
                                        .kSFProBoldItalic(size: getRelativeHeight(20.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(29.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(44.0))
                            }
                            .frame(width: getRelativeWidth(100.0), height: getRelativeHeight(24.0),
                                   alignment: .bottom)
                            Spacer()
                            HStack {
                                Text(StringConstants.kLbl4)
                                    .font(FontScheme
                                        .kSFProSemiboldItalic(size: getRelativeHeight(20.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(16.0),
                                           height: getRelativeHeight(24.0), alignment: .topLeading)
                                Text(StringConstants.kLbl)
                                    .font(FontScheme
                                        .kSFProSemiboldItalic(size: getRelativeHeight(20.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(41.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(51.0))
                            }
                            .frame(width: getRelativeWidth(109.0), height: getRelativeHeight(26.0),
                                   alignment: .center)
                        }
                        .frame(width: getRelativeWidth(303.0), height: getRelativeHeight(27.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(22.0))
                        .padding(.horizontal, getRelativeWidth(34.0))
                        HStack {
                            ZStack(alignment: .topLeading) {
                                Text(StringConstants.kLblActivity)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(36.0),
                                           height: getRelativeHeight(10.0), alignment: .topLeading)
                                    .padding(.trailing, getRelativeWidth(115.0))
                                HStack {
                                    Text(StringConstants.kLblHome)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(10.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Gray900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(29.0),
                                               height: getRelativeHeight(10.0),
                                               alignment: .topLeading)
                                    Text(StringConstants.kLblNutrition)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(10.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Gray900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(41.0),
                                               height: getRelativeHeight(10.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(152.0))
                                }
                                .frame(width: getRelativeWidth(223.0),
                                       height: getRelativeHeight(10.0), alignment: .topLeading)
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(223.0), height: getRelativeHeight(11.0),
                                   alignment: .center)
                            Spacer()
                            Text(StringConstants.kLblSocial)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(29.0),
                                       height: getRelativeHeight(10.0), alignment: .topLeading)
                        }
                        .frame(width: getRelativeWidth(297.0), height: getRelativeHeight(11.0),
                               alignment: .center)
                        .padding(.vertical, getRelativeHeight(4.0))
                        .padding(.horizontal, getRelativeWidth(34.0))
                    }
                    .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(77.0),
                           alignment: .leading)
                    .background(ColorConstants.Gray50Ef)
                    .padding(.top, getRelativeHeight(63.0))
                }
                .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(766.0),
                       alignment: .bottomLeading)
                .padding(.top, getRelativeHeight(40.0))
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

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
