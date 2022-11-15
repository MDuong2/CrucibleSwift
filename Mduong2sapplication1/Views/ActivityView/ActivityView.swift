import SwiftUI

struct ActivityView: View {
    @StateObject var activityViewModel = ActivityViewModel()
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
                        VStack {
                            HStack {
                                Button(action: {
                                    self.presentationMode.wrappedValue.dismiss()
                                }, label: {
                                    Image("img_arrowleft")
                                })
                                .frame(width: getRelativeWidth(42.0),
                                       height: getRelativeHeight(40.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 9.0, topRight: 9.0,
                                                           bottomLeft: 9.0, bottomRight: 9.0)
                                        .fill(ColorConstants.IndigoA20059))
                                Text(StringConstants.kLblActivity)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Gray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(65.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(21.0))
                                    .padding(.leading, getRelativeWidth(72.0))
                            }
                            .frame(width: getRelativeWidth(179.0), height: getRelativeHeight(40.0),
                                   alignment: .leading)
                            .padding(.horizontal, getRelativeWidth(29.0))
                            Button(action: {}, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblAddActivity)
                                        .font(FontScheme
                                            .kPoppinsBold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.bold)
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(21.0))
                                        .foregroundColor(ColorConstants.WhiteA701)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(290.0),
                                               height: getRelativeHeight(61.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 30.5, topRight: 30.5,
                                                                   bottomLeft: 30.5,
                                                                   bottomRight: 30.5)
                                                .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                            .IndigoA102,
                                                        ColorConstants
                                                            .Blue200]),
                                                    startPoint: .topLeading,
                                                    endPoint: .bottomTrailing)))
                                        .shadow(color: ColorConstants.IndigoA1004c, radius: 22,
                                                x: 0, y: 10)
                                        .padding(.top, getRelativeHeight(16.0))
                                        .padding(.horizontal, getRelativeWidth(26.0))
                                }
                            })
                            .frame(width: getRelativeWidth(290.0), height: getRelativeHeight(61.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 30.5, topRight: 30.5,
                                                       bottomLeft: 30.5, bottomRight: 30.5)
                                    .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                .IndigoA102,
                                            ColorConstants
                                                .Blue200]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing)))
                            .shadow(color: ColorConstants.IndigoA1004c, radius: 22, x: 0, y: 10)
                            .padding(.top, getRelativeHeight(16.0))
                            .padding(.horizontal, getRelativeWidth(26.0))
                            Text(StringConstants.kLblTodaysExercise)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(132.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(36.0))
                                .padding(.horizontal, getRelativeWidth(26.0))
                            VStack(spacing: 0) {
                                ScrollView(.vertical, showsIndicators: false) {
                                    LazyVStack {
                                        ForEach(0 ... 2, id: \.self) { index in
                                            ColumnsquatCell()
                                        }
                                    }
                                }
                            }
                            .frame(width: getRelativeWidth(321.0), alignment: .center)
                            .padding(.top, getRelativeHeight(11.0))
                            .padding(.horizontal, getRelativeWidth(26.0))
                            HStack {
                                Text(StringConstants.kLblTotalVolume)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Gray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(110.0),
                                           height: getRelativeHeight(16.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(7.0))
                                    .padding(.bottom, getRelativeHeight(6.0))
                                Picker(StringConstants.kLblWeekly,
                                       selection: $activityViewModel.dropdownPicker1) {
                                    ForEach(activityViewModel.dropdownPicker1Values,
                                            id: \.self) { value in
                                        Text(value)
                                    }
                                }
                                .foregroundColor(ColorConstants.WhiteA701)
                                .font(.system(size: getRelativeHeight(10)))
                                .pickerStyle(MenuPickerStyle())
                            }
                            .frame(width: getRelativeWidth(242.0), height: getRelativeHeight(30.0),
                                   alignment: .trailing)
                            .padding(.top, getRelativeHeight(22.0))
                            .padding(.horizontal, getRelativeWidth(48.0))
                            VStack {
                                HStack {
                                    Group {
                                        VStack {
                                            ZStack {}
                                                .hideNavigationBar()
                                                .frame(width: getRelativeWidth(22.0),
                                                       height: getRelativeHeight(39.0),
                                                       alignment: .leading)
                                                .background(RoundedCorners(topLeft: 11.0,
                                                                           topRight: 11.0,
                                                                           bottomLeft: 11.0,
                                                                           bottomRight: 11.0)
                                                        .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                                    .IndigoA102,
                                                                ColorConstants
                                                                    .Blue200]),
                                                            startPoint: .topLeading,
                                                            endPoint: .bottomTrailing)))
                                                .padding(.top, getRelativeHeight(96.0))
                                        }
                                        .frame(width: getRelativeWidth(22.0),
                                               height: getRelativeHeight(135.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 11.0, topRight: 11.0,
                                                                   bottomLeft: 11.0,
                                                                   bottomRight: 11.0)
                                                .fill(ColorConstants.Gray50))
                                        Spacer()
                                        VStack {
                                            ZStack {}
                                                .hideNavigationBar()
                                                .frame(width: getRelativeWidth(22.0),
                                                       height: getRelativeHeight(98.0),
                                                       alignment: .leading)
                                                .background(RoundedCorners(topLeft: 11.0,
                                                                           topRight: 11.0,
                                                                           bottomLeft: 11.0,
                                                                           bottomRight: 11.0)
                                                        .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                                    .DeepPurpleA100,
                                                                ColorConstants
                                                                    .Pink100]),
                                                            startPoint: .topLeading,
                                                            endPoint: .bottomTrailing)))
                                                .padding(.top, getRelativeHeight(37.0))
                                        }
                                        .frame(width: getRelativeWidth(22.0),
                                               height: getRelativeHeight(135.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 11.0, topRight: 11.0,
                                                                   bottomLeft: 11.0,
                                                                   bottomRight: 11.0)
                                                .fill(ColorConstants.Gray50))
                                        Spacer()
                                        VStack {
                                            ZStack {}
                                                .hideNavigationBar()
                                                .frame(width: getRelativeWidth(22.0),
                                                       height: getRelativeHeight(64.0),
                                                       alignment: .leading)
                                                .background(RoundedCorners(topLeft: 11.0,
                                                                           topRight: 11.0,
                                                                           bottomLeft: 11.0,
                                                                           bottomRight: 11.0)
                                                        .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                                    .IndigoA102,
                                                                ColorConstants
                                                                    .Blue200]),
                                                            startPoint: .topLeading,
                                                            endPoint: .bottomTrailing)))
                                                .padding(.top, getRelativeHeight(71.0))
                                        }
                                        .frame(width: getRelativeWidth(22.0),
                                               height: getRelativeHeight(135.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 11.0, topRight: 11.0,
                                                                   bottomLeft: 11.0,
                                                                   bottomRight: 11.0)
                                                .fill(ColorConstants.Gray50))
                                        Spacer()
                                        VStack {
                                            ZStack {}
                                                .hideNavigationBar()
                                                .frame(width: getRelativeWidth(23.0),
                                                       height: getRelativeHeight(85.0),
                                                       alignment: .leading)
                                                .background(RoundedCorners(topLeft: 11.5,
                                                                           topRight: 11.5,
                                                                           bottomLeft: 11.5,
                                                                           bottomRight: 11.5)
                                                        .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                                    .DeepPurpleA100,
                                                                ColorConstants
                                                                    .Pink100]),
                                                            startPoint: .topLeading,
                                                            endPoint: .bottomTrailing)))
                                                .padding(.top, getRelativeHeight(50.0))
                                        }
                                        .frame(width: getRelativeWidth(23.0),
                                               height: getRelativeHeight(135.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 11.5, topRight: 11.5,
                                                                   bottomLeft: 11.5,
                                                                   bottomRight: 11.5)
                                                .fill(ColorConstants.Gray50))
                                        Spacer()
                                    }
                                    Group {
                                        VStack {
                                            ZStack {}
                                                .hideNavigationBar()
                                                .frame(width: getRelativeWidth(22.0),
                                                       height: getRelativeHeight(108.0),
                                                       alignment: .leading)
                                                .background(RoundedCorners(topLeft: 11.0,
                                                                           topRight: 11.0,
                                                                           bottomLeft: 11.0,
                                                                           bottomRight: 11.0)
                                                        .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                                    .IndigoA102,
                                                                ColorConstants
                                                                    .Blue200]),
                                                            startPoint: .topLeading,
                                                            endPoint: .bottomTrailing)))
                                                .padding(.top, getRelativeHeight(27.0))
                                        }
                                        .frame(width: getRelativeWidth(22.0),
                                               height: getRelativeHeight(135.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 11.0, topRight: 11.0,
                                                                   bottomLeft: 11.0,
                                                                   bottomRight: 11.0)
                                                .fill(ColorConstants.Gray50))
                                        Spacer()
                                        VStack {
                                            ZStack {}
                                                .hideNavigationBar()
                                                .frame(width: getRelativeWidth(22.0),
                                                       height: getRelativeHeight(39.0),
                                                       alignment: .leading)
                                                .background(RoundedCorners(topLeft: 11.0,
                                                                           topRight: 11.0,
                                                                           bottomLeft: 11.0,
                                                                           bottomRight: 11.0)
                                                        .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                                    .DeepPurpleA100,
                                                                ColorConstants
                                                                    .Pink100]),
                                                            startPoint: .topLeading,
                                                            endPoint: .bottomTrailing)))
                                                .padding(.top, getRelativeHeight(96.0))
                                        }
                                        .frame(width: getRelativeWidth(22.0),
                                               height: getRelativeHeight(135.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 11.0, topRight: 11.0,
                                                                   bottomLeft: 11.0,
                                                                   bottomRight: 11.0)
                                                .fill(ColorConstants.Gray50))
                                        Spacer()
                                        VStack {
                                            ZStack {}
                                                .hideNavigationBar()
                                                .frame(width: getRelativeWidth(22.0),
                                                       height: getRelativeHeight(87.0),
                                                       alignment: .leading)
                                                .background(RoundedCorners(topLeft: 11.0,
                                                                           topRight: 11.0,
                                                                           bottomLeft: 11.0,
                                                                           bottomRight: 11.0)
                                                        .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                                    .IndigoA102,
                                                                ColorConstants
                                                                    .Blue200]),
                                                            startPoint: .topLeading,
                                                            endPoint: .bottomTrailing)))
                                                .padding(.top, getRelativeHeight(48.0))
                                        }
                                        .frame(width: getRelativeWidth(22.0),
                                               height: getRelativeHeight(135.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 11.0, topRight: 11.0,
                                                                   bottomLeft: 11.0,
                                                                   bottomRight: 11.0)
                                                .fill(ColorConstants.Gray50))
                                    }
                                }
                                .frame(width: getRelativeWidth(275.0),
                                       height: getRelativeHeight(135.0), alignment: .center)
                                .padding(.top, getRelativeHeight(20.0))
                                .padding(.horizontal, getRelativeWidth(20.0))
                                HStack {
                                    Group {
                                        Text(StringConstants.kLblSun)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray600)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(23.0),
                                                   height: getRelativeHeight(12.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                        Text(StringConstants.kLblMon)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray600)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(26.0),
                                                   height: getRelativeHeight(12.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                        Text(StringConstants.kLblTue)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray600)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(22.0),
                                                   height: getRelativeHeight(12.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                        Text(StringConstants.kLblWed)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray600)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(28.0),
                                                   height: getRelativeHeight(12.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                    }
                                    Group {
                                        Text(StringConstants.kLblThu)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray600)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(22.0),
                                                   height: getRelativeHeight(12.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                        Text(StringConstants.kLblFri)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray600)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(14.0),
                                                   height: getRelativeHeight(12.0),
                                                   alignment: .topLeading)
                                        Spacer()
                                        Text(StringConstants.kLblSat)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray600)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(20.0),
                                                   height: getRelativeHeight(12.0),
                                                   alignment: .topLeading)
                                    }
                                }
                                .frame(width: getRelativeWidth(274.0),
                                       height: getRelativeHeight(12.0), alignment: .center)
                                .padding(.vertical, getRelativeHeight(9.0))
                                .padding(.horizontal, getRelativeWidth(20.0))
                            }
                            .frame(width: getRelativeWidth(315.0), height: getRelativeHeight(200.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                       bottomLeft: 20.0, bottomRight: 20.0)
                                    .fill(ColorConstants.WhiteA701))
                            .shadow(color: ColorConstants.Gray90011, radius: 40, x: 0, y: 10)
                            .padding(.top, getRelativeHeight(9.0))
                            .padding(.horizontal, getRelativeWidth(26.0))
                            VStack(alignment: .leading, spacing: 0) {
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
                                                   height: getRelativeHeight(21.0),
                                                   alignment: .topLeading)
                                        Text(StringConstants.kLbl3)
                                            .font(FontScheme
                                                .kSFProBoldItalic(size: getRelativeHeight(20.0)))
                                            .fontWeight(.bold)
                                            .foregroundColor(ColorConstants.Black900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(29.0),
                                                   height: getRelativeHeight(20.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(44.0))
                                    }
                                    .frame(width: getRelativeWidth(100.0),
                                           height: getRelativeHeight(24.0), alignment: .bottom)
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
                                                   height: getRelativeHeight(24.0),
                                                   alignment: .topLeading)
                                        Text(StringConstants.kLbl)
                                            .font(FontScheme
                                                .kSFProSemiboldItalic(size: getRelativeHeight(20.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Black900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(41.0),
                                                   height: getRelativeHeight(20.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(51.0))
                                    }
                                    .frame(width: getRelativeWidth(109.0),
                                           height: getRelativeHeight(26.0), alignment: .center)
                                    .padding(.leading, getRelativeWidth(93.0))
                                }
                                .frame(width: getRelativeWidth(303.0),
                                       height: getRelativeHeight(27.0), alignment: .trailing)
                                .padding(.top, getRelativeHeight(22.0))
                                .padding(.horizontal, getRelativeWidth(28.0))
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
                                .padding(.vertical, getRelativeHeight(4.0))
                                .padding(.horizontal, getRelativeWidth(29.0))
                            }
                            .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(77.0),
                                   alignment: .leading)
                            .background(ColorConstants.Gray50Ef)
                            .padding(.top, getRelativeHeight(18.0))
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

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView()
    }
}
