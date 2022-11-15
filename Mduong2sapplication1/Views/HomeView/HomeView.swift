import SwiftUI

struct HomeView: View {
    @StateObject var homeViewModel = HomeViewModel()
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
                    .padding(.horizontal, getRelativeWidth(13.0))
                }
                .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(33.0),
                       alignment: .leading)
                VStack(alignment: .leading, spacing: 0) {
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .trailing, spacing: 0) {
                            HStack {
                                Image("img_setting")
                                    .resizable()
                                    .frame(width: getRelativeWidth(19.0),
                                           height: getRelativeHeight(15.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.bottom, getRelativeHeight(45.0))
                                Spacer()
                                HStack {
                                    VStack {
                                        Text(StringConstants.kLblWelcomeBack2)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray500)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(92.0),
                                                   height: getRelativeHeight(12.0),
                                                   alignment: .topLeading)
                                        Text(StringConstants.kLblJason)
                                            .font(FontScheme
                                                .kPoppinsBold(size: getRelativeHeight(20.0)))
                                            .fontWeight(.bold)
                                            .foregroundColor(ColorConstants.Gray900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(63.0),
                                                   height: getRelativeHeight(20.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(10.0))
                                            .padding(.horizontal, getRelativeWidth(8.0))
                                    }
                                    .frame(width: getRelativeWidth(92.0),
                                           height: getRelativeHeight(42.0), alignment: .center)
                                    Button(action: {}, label: {
                                        Image("img_notificationbg")
                                    })
                                    .frame(width: getRelativeWidth(40.0),
                                           height: getRelativeWidth(40.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(ColorConstants.Gray50))
                                    .shadow(color: ColorConstants.Gray90011, radius: 40, x: 0,
                                            y: 10)
                                    .padding(.leading, getRelativeWidth(65.0))
                                }
                                .frame(width: getRelativeWidth(197.0),
                                       height: getRelativeHeight(43.0), alignment: .bottom)
                                .padding(.vertical, getRelativeHeight(13.0))
                            }
                            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(61.0),
                                   alignment: .center)
                            .padding(.horizontal, getRelativeWidth(22.0))
                            VStack {
                                HStack {
                                    Text(StringConstants.kLblTodaysGoals)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Gray900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(97.0),
                                               height: getRelativeHeight(16.0),
                                               alignment: .topLeading)
                                        .padding(.vertical, getRelativeHeight(6.0))
                                    Spacer()
                                    Button(action: {}, label: {
                                        Image("img_button")
                                    })
                                    .frame(width: getRelativeWidth(24.0),
                                           height: getRelativeWidth(24.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                        .IndigoA102,
                                                    ColorConstants
                                                        .Blue200]),
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing)))
                                }
                                .frame(width: getRelativeWidth(275.0),
                                       height: getRelativeHeight(24.0), alignment: .center)
                                .padding(.top, getRelativeHeight(20.0))
                                .padding(.horizontal, getRelativeWidth(20.0))
                                HStack(spacing: 0) {
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        LazyHStack {
                                            ForEach(0 ... 1, id: \.self) { index in
                                                TargetContentCell()
                                            }
                                        }
                                    }
                                }
                                .frame(width: getRelativeWidth(275.0), alignment: .center)
                                .padding(.vertical, getRelativeHeight(15.0))
                                .padding(.horizontal, getRelativeWidth(20.0))
                            }
                            .frame(width: getRelativeWidth(315.0), height: getRelativeHeight(139.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 22.0, topRight: 22.0,
                                                       bottomLeft: 22.0, bottomRight: 22.0)
                                    .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                .IndigoA1006c,
                                            ColorConstants
                                                .Blue2006c]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing)))
                            .padding(.top, getRelativeHeight(41.0))
                            .padding(.leading, getRelativeWidth(22.0))
                            .padding(.trailing, getRelativeWidth(38.0))
                            Text(StringConstants.kLblActivity)
                                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(62.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(39.0))
                                .padding(.leading, getRelativeWidth(32.0))
                                .padding(.trailing, getRelativeWidth(281.0))
                            VStack {
                                Text(StringConstants.kMsgWalkingRunni)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Gray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(171.0),
                                           height: getRelativeHeight(14.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(11.0))
                                    .padding(.leading, getRelativeWidth(79.0))
                                    .padding(.trailing, getRelativeWidth(71.0))
                                ZStack(alignment: .center) {
                                    CircularProgress(percentage: 0.5,
                                                     fontSize: 0.0,
                                                     backgroundColor: Color.clear,
                                                     fontColor: Color.clear,
                                                     borderColor1: ColorConstants.Gray50,
                                                     borderColor2: LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                             .DeepPurpleA100,
                                                         ColorConstants.Indigo100]),
                                                     startPoint: .topLeading,
                                                     endPoint: .bottomTrailing),
                                                     borderWidth: 7)
                                        .frame(width: getRelativeWidth(119.0),
                                               height: getRelativeHeight(86.0), alignment: .leading)
                                        .overlay(RoundedCorners()
                                            .stroke(ColorConstants.Gray50, lineWidth: 3))
                                        .background(RoundedCorners().fill(ColorConstants.Gray50))
                                    ZStack(alignment: .center) {
                                        ZStack {}
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(86.0),
                                                   height: getRelativeHeight(63.0),
                                                   alignment: .leading)
                                            .background(RoundedCorners(topLeft: 43.275,
                                                                       topRight: 43.275,
                                                                       bottomLeft: 43.275,
                                                                       bottomRight: 43.275)
                                                    .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                                .IndigoA102,
                                                            ColorConstants
                                                                .Blue200]),
                                                        startPoint: .topLeading,
                                                        endPoint: .bottomTrailing)))
                                            .shadow(color: ColorConstants.IndigoA1004c, radius: 22,
                                                    x: 0, y: 10)
                                        Text(StringConstants.kLbl13Mi)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(8.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.WhiteA701)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(9.0),
                                                   height: getRelativeHeight(17.0),
                                                   alignment: .center)
                                            .padding(.top, getRelativeHeight(26.75))
                                            .padding(.horizontal, getRelativeWidth(39.6))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(86.0),
                                           height: getRelativeHeight(63.0), alignment: .center)
                                    .padding(.top, getRelativeHeight(11.82))
                                    .padding(.bottom, getRelativeHeight(11.18))
                                    .padding(.horizontal, getRelativeWidth(16.23))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(119.0),
                                       height: getRelativeHeight(86.0), alignment: .center)
                                .padding(.vertical, getRelativeHeight(15.0))
                                .padding(.horizontal, getRelativeWidth(79.0))
                            }
                            .frame(width: getRelativeWidth(321.0), height: getRelativeHeight(150.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                       bottomLeft: 20.0, bottomRight: 20.0)
                                    .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                .IndigoA1006c,
                                            ColorConstants
                                                .Blue2006c]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing)))
                            .shadow(color: ColorConstants.IndigoA1004c, radius: 22, x: 0, y: 10)
                            .padding(.top, getRelativeHeight(5.0))
                            .padding(.horizontal, getRelativeWidth(22.0))
                            HStack {
                                HStack {
                                    VStack {
                                        ZStack {}
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(20.0),
                                                   height: getRelativeHeight(151.0),
                                                   alignment: .leading)
                                            .background(RoundedCorners(bottomLeft: 10.0,
                                                                       bottomRight: 10.0)
                                                    .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                                .DeepPurpleA100,
                                                            ColorConstants
                                                                .Indigo100]),
                                                        startPoint: .topLeading,
                                                        endPoint: .bottomTrailing)))
                                            .padding(.top, getRelativeHeight(124.0))
                                    }
                                    .frame(width: getRelativeWidth(20.0),
                                           height: getRelativeHeight(275.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                               bottomLeft: 10.0, bottomRight: 10.0)
                                            .fill(ColorConstants.Gray50))
                                    .padding(.leading, getRelativeWidth(20.0))
                                    VStack(alignment: .leading, spacing: 0) {
                                        Text(StringConstants.kLblWaterIntake)
                                            .font(FontScheme
                                                .kPoppinsMedium(size: getRelativeHeight(12.0)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.Gray902)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(78.0),
                                                   height: getRelativeHeight(12.0),
                                                   alignment: .topLeading)
                                            .padding(.trailing)
                                        Text(StringConstants.kLbl4Liters)
                                            .font(FontScheme
                                                .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.IndigoA102)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(51.0),
                                                   height: getRelativeHeight(14.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(10.0))
                                            .padding(.trailing, getRelativeWidth(10.0))
                                        VStack(alignment: .leading, spacing: 0) {
                                            Text(StringConstants.kMsgRealTimeUpdat)
                                                .font(FontScheme
                                                    .kPoppinsRegular(size: getRelativeHeight(10.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.Gray600)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(92.0),
                                                       height: getRelativeHeight(11.0),
                                                       alignment: .topLeading)
                                            HStack {
                                                Image("img_realtimeupdat")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(10.0),
                                                           height: getRelativeHeight(160.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipped()
                                                    .padding(.bottom, getRelativeHeight(16.0))
                                                VStack(alignment: .leading, spacing: 0) {
                                                    Group {
                                                        Text(StringConstants.kLbl6am8am)
                                                            .font(FontScheme
                                                                .kPoppinsRegular(size: getRelativeHeight(8.0)))
                                                            .fontWeight(.regular)
                                                            .foregroundColor(ColorConstants.Gray500)
                                                            .minimumScaleFactor(0.5)
                                                            .multilineTextAlignment(.leading)
                                                            .frame(width: getRelativeWidth(47.0),
                                                                   height: getRelativeHeight(8.0),
                                                                   alignment: .topLeading)
                                                        Text(StringConstants.kLbl600ml)
                                                            .font(FontScheme
                                                                .kPoppinsMedium(size: getRelativeHeight(8.0)))
                                                            .fontWeight(.medium)
                                                            .foregroundColor(ColorConstants
                                                                .DeepPurpleA100)
                                                            .minimumScaleFactor(0.5)
                                                            .multilineTextAlignment(.leading)
                                                            .frame(width: getRelativeWidth(26.0),
                                                                   height: getRelativeHeight(8.0),
                                                                   alignment: .topLeading)
                                                            .padding(.top, getRelativeHeight(6.0))
                                                            .padding(.trailing,
                                                                     getRelativeWidth(10.0))
                                                        Text(StringConstants.kLbl9am11am)
                                                            .font(FontScheme
                                                                .kPoppinsRegular(size: getRelativeHeight(8.0)))
                                                            .fontWeight(.regular)
                                                            .foregroundColor(ColorConstants.Gray500)
                                                            .minimumScaleFactor(0.5)
                                                            .multilineTextAlignment(.leading)
                                                            .frame(width: getRelativeWidth(47.0),
                                                                   height: getRelativeHeight(8.0),
                                                                   alignment: .topLeading)
                                                            .padding(.top, getRelativeHeight(14.0))
                                                        Text(StringConstants.kLbl500ml)
                                                            .font(FontScheme
                                                                .kPoppinsMedium(size: getRelativeHeight(8.0)))
                                                            .fontWeight(.medium)
                                                            .foregroundColor(ColorConstants
                                                                .DeepPurpleA100)
                                                            .minimumScaleFactor(0.5)
                                                            .multilineTextAlignment(.leading)
                                                            .frame(width: getRelativeWidth(26.0),
                                                                   height: getRelativeHeight(8.0),
                                                                   alignment: .topLeading)
                                                            .padding(.top, getRelativeHeight(6.0))
                                                            .padding(.trailing,
                                                                     getRelativeWidth(10.0))
                                                        Text(StringConstants.kLbl11am2pm)
                                                            .font(FontScheme
                                                                .kPoppinsRegular(size: getRelativeHeight(8.0)))
                                                            .fontWeight(.regular)
                                                            .foregroundColor(ColorConstants.Gray500)
                                                            .minimumScaleFactor(0.5)
                                                            .multilineTextAlignment(.leading)
                                                            .frame(width: getRelativeWidth(46.0),
                                                                   height: getRelativeHeight(8.0),
                                                                   alignment: .topLeading)
                                                            .padding(.top, getRelativeHeight(14.0))
                                                        Text(StringConstants.kLbl1000ml)
                                                            .font(FontScheme
                                                                .kPoppinsMedium(size: getRelativeHeight(8.0)))
                                                            .fontWeight(.medium)
                                                            .foregroundColor(ColorConstants
                                                                .DeepPurpleA100)
                                                            .minimumScaleFactor(0.5)
                                                            .multilineTextAlignment(.leading)
                                                            .frame(width: getRelativeWidth(29.0),
                                                                   height: getRelativeHeight(8.0),
                                                                   alignment: .topLeading)
                                                            .padding(.top, getRelativeHeight(6.0))
                                                            .padding(.trailing,
                                                                     getRelativeWidth(10.0))
                                                        Text(StringConstants.kLbl2pm4pm)
                                                            .font(FontScheme
                                                                .kPoppinsRegular(size: getRelativeHeight(8.0)))
                                                            .fontWeight(.regular)
                                                            .foregroundColor(ColorConstants.Gray500)
                                                            .minimumScaleFactor(0.5)
                                                            .multilineTextAlignment(.leading)
                                                            .frame(width: getRelativeWidth(46.0),
                                                                   height: getRelativeHeight(8.0),
                                                                   alignment: .topLeading)
                                                            .padding(.top, getRelativeHeight(14.0))
                                                        Text(StringConstants.kLbl700ml)
                                                            .font(FontScheme
                                                                .kPoppinsMedium(size: getRelativeHeight(8.0)))
                                                            .fontWeight(.medium)
                                                            .foregroundColor(ColorConstants
                                                                .DeepPurpleA100)
                                                            .minimumScaleFactor(0.5)
                                                            .multilineTextAlignment(.leading)
                                                            .frame(width: getRelativeWidth(26.0),
                                                                   height: getRelativeHeight(8.0),
                                                                   alignment: .topLeading)
                                                            .padding(.top, getRelativeHeight(6.0))
                                                            .padding(.trailing,
                                                                     getRelativeWidth(10.0))
                                                    }
                                                    Group {
                                                        Text(StringConstants.kLbl4pmNow)
                                                            .font(FontScheme
                                                                .kPoppinsRegular(size: getRelativeHeight(8.0)))
                                                            .fontWeight(.regular)
                                                            .foregroundColor(ColorConstants.Gray500)
                                                            .minimumScaleFactor(0.5)
                                                            .multilineTextAlignment(.leading)
                                                            .frame(width: getRelativeWidth(45.0),
                                                                   height: getRelativeHeight(8.0),
                                                                   alignment: .topLeading)
                                                            .padding(.top, getRelativeHeight(14.0))
                                                        Text(StringConstants.kLbl900ml)
                                                            .font(FontScheme
                                                                .kPoppinsMedium(size: getRelativeHeight(8.0)))
                                                            .fontWeight(.medium)
                                                            .foregroundColor(ColorConstants
                                                                .DeepPurpleA100)
                                                            .minimumScaleFactor(0.5)
                                                            .multilineTextAlignment(.leading)
                                                            .frame(width: getRelativeWidth(26.0),
                                                                   height: getRelativeHeight(8.0),
                                                                   alignment: .topLeading)
                                                            .padding(.top, getRelativeHeight(6.0))
                                                            .padding(.trailing,
                                                                     getRelativeWidth(10.0))
                                                    }
                                                }
                                                .frame(width: getRelativeWidth(47.0),
                                                       height: getRelativeHeight(175.0),
                                                       alignment: .center)
                                                .padding(.leading, getRelativeWidth(8.0))
                                            }
                                            .frame(width: getRelativeWidth(65.0),
                                                   height: getRelativeHeight(176.0),
                                                   alignment: .leading)
                                            .padding(.top, getRelativeHeight(8.0))
                                            .padding(.trailing, getRelativeWidth(10.0))
                                        }
                                        .frame(width: getRelativeWidth(92.0),
                                               height: getRelativeHeight(195.0),
                                               alignment: .leading)
                                        .padding(.top, getRelativeHeight(17.0))
                                    }
                                    .frame(width: getRelativeWidth(92.0),
                                           height: getRelativeHeight(250.0), alignment: .top)
                                    .padding(.horizontal, getRelativeWidth(10.0))
                                }
                                .frame(width: getRelativeWidth(150.0),
                                       height: getRelativeHeight(315.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                           bottomLeft: 20.0, bottomRight: 20.0)
                                        .fill(ColorConstants.WhiteA701))
                                .shadow(color: ColorConstants.Gray9000c, radius: 40, x: 0, y: 10)
                                VStack {
                                    VStack(alignment: .leading, spacing: 0) {
                                        Text(StringConstants.kLblCalories)
                                            .font(FontScheme
                                                .kPoppinsMedium(size: getRelativeHeight(12.0)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.Gray900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(50.0),
                                                   height: getRelativeHeight(12.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(27.0))
                                            .padding(.horizontal, getRelativeWidth(20.0))
                                        Text(StringConstants.kLbl760Kcal)
                                            .font(FontScheme
                                                .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.IndigoA102)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(62.0),
                                                   height: getRelativeHeight(14.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(12.0))
                                            .padding(.horizontal, getRelativeWidth(20.0))
                                        ZStack(alignment: .center) {
                                            CircularProgress(percentage: 0.5,
                                                             fontSize: 0.0,
                                                             backgroundColor: Color.clear,
                                                             fontColor: Color.clear,
                                                             borderColor1: ColorConstants.Gray50,
                                                             borderColor2: LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                                     .DeepPurpleA100,
                                                                 ColorConstants.Indigo100]),
                                                             startPoint: .topLeading,
                                                             endPoint: .bottomTrailing),
                                                             borderWidth: 7)
                                                .frame(width: getRelativeWidth(66.0),
                                                       height: getRelativeHeight(68.0),
                                                       alignment: .leading)
                                                .overlay(RoundedCorners()
                                                    .stroke(ColorConstants.Gray50, lineWidth: 3))
                                                .background(RoundedCorners()
                                                    .fill(ColorConstants.Gray50))
                                            VStack {
                                                Text(StringConstants.kLbl230kcalLeft)
                                                    .font(FontScheme
                                                        .kPoppinsRegular(size: getRelativeHeight(8.0)))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(ColorConstants.WhiteA701)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.center)
                                                    .frame(width: getRelativeWidth(36.0),
                                                           height: getRelativeHeight(20.0),
                                                           alignment: .center)
                                                    .padding(.top, getRelativeHeight(15.0))
                                                    .padding(.bottom, getRelativeHeight(13.0))
                                                    .padding(.horizontal, getRelativeWidth(6.0))
                                            }
                                            .frame(width: getRelativeWidth(48.0),
                                                   height: getRelativeHeight(49.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 24.96,
                                                                       topRight: 24.96,
                                                                       bottomLeft: 24.96,
                                                                       bottomRight: 24.96)
                                                    .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                                .IndigoA102,
                                                            ColorConstants
                                                                .Blue200]),
                                                        startPoint: .topLeading,
                                                        endPoint: .bottomTrailing)))
                                            .shadow(color: ColorConstants.IndigoA1004c, radius: 22,
                                                    x: 0, y: 10)
                                            .padding(.top, getRelativeHeight(9.36))
                                            .padding(.bottom, getRelativeHeight(9.64))
                                            .padding(.horizontal, getRelativeWidth(9.0))
                                        }
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(66.0),
                                               height: getRelativeHeight(68.0), alignment: .center)
                                        .padding(.top, getRelativeHeight(11.0))
                                        .padding(.bottom, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    }
                                    .frame(width: getRelativeWidth(150.0),
                                           height: getRelativeHeight(156.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                               bottomLeft: 20.0, bottomRight: 20.0)
                                            .fill(ColorConstants.WhiteA701))
                                    .shadow(color: ColorConstants.Gray90011, radius: 40, x: 0,
                                            y: 10)
                                    VStack {
                                        Text(StringConstants.kLblMedals)
                                            .font(FontScheme
                                                .kPoppinsMedium(size: getRelativeHeight(12.0)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.Gray902)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(44.0),
                                                   height: getRelativeHeight(12.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(10.0))
                                            .padding(.horizontal, getRelativeWidth(50.0))
                                        HStack {
                                            Image("img_medal2")
                                                .resizable()
                                                .frame(width: getRelativeWidth(25.0),
                                                       height: getRelativeHeight(32.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                            Spacer()
                                            Image("img_trophy2x1")
                                                .resizable()
                                                .frame(width: getRelativeWidth(28.0),
                                                       height: getRelativeHeight(34.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                        }
                                        .frame(width: getRelativeWidth(84.0),
                                               height: getRelativeHeight(34.0), alignment: .center)
                                        .padding(.top, getRelativeHeight(36.0))
                                        .padding(.bottom, getRelativeHeight(37.0))
                                        .padding(.horizontal, getRelativeWidth(31.0))
                                    }
                                    .frame(width: getRelativeWidth(150.0),
                                           height: getRelativeHeight(130.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                               bottomLeft: 20.0, bottomRight: 20.0)
                                            .fill(ColorConstants.WhiteA701))
                                    .shadow(color: ColorConstants.Gray9000c, radius: 40, x: 0,
                                            y: 10)
                                    .padding(.top, getRelativeHeight(29.0))
                                }
                                .frame(width: getRelativeWidth(152.0),
                                       height: getRelativeHeight(315.0), alignment: .center)
                                .padding(.leading, getRelativeWidth(16.0))
                            }
                            .frame(width: getRelativeWidth(318.0), height: getRelativeHeight(315.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(16.0))
                            .padding(.horizontal, getRelativeWidth(22.0))
                            VStack {
                                Text(StringConstants.kLbl)
                                    .font(FontScheme
                                        .kSFProSemiboldItalic(size: getRelativeHeight(20.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(41.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(17.0))
                                    .padding(.horizontal, getRelativeWidth(22.0))
                                HStack {
                                    ZStack(alignment: .topLeading) {
                                        Text(StringConstants.kLblActivity)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(10.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(36.0),
                                                   height: getRelativeHeight(10.0),
                                                   alignment: .topLeading)
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
                                               height: getRelativeHeight(10.0),
                                               alignment: .topLeading)
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(223.0),
                                           height: getRelativeHeight(11.0), alignment: .center)
                                    Text(StringConstants.kLblSocial)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(10.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Gray900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(29.0),
                                               height: getRelativeHeight(10.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(44.0))
                                }
                                .frame(width: getRelativeWidth(297.0),
                                       height: getRelativeHeight(11.0), alignment: .trailing)
                                .padding(.bottom, getRelativeHeight(5.0))
                                .padding(.horizontal, getRelativeWidth(29.0))
                            }
                            .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(58.0),
                                   alignment: .leading)
                            .background(ColorConstants.Gray50Ef)
                            .padding(.top, getRelativeHeight(49.0))
                        }
                        .frame(width: getRelativeWidth(375.0), alignment: .topLeading)
                    }
                }
                .frame(width: getRelativeWidth(375.0), height: UIScreen.main.bounds.height,
                       alignment: .topLeading)
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

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
