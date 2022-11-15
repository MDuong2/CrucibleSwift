import SwiftUI

struct NutritionView: View {
    @StateObject var nutritionViewModel = NutritionViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
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
                    .padding(.horizontal, getRelativeWidth(18.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(33.0),
                       alignment: .leading)
                VStack(alignment: .leading, spacing: 0) {
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            Group {
                                Text(StringConstants.kLblNutrition)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Gray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(74.0),
                                           height: getRelativeHeight(16.0), alignment: .topLeading)
                                    .padding(.horizontal, getRelativeWidth(36.0))
                                ScrollView(.horizontal, showsIndicators: false) {
                                    ZStack(alignment: .topLeading) {
                                        VStack {
                                            HStack {
                                                Image("img_arrowleft_gray_500")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(6.0),
                                                           height: getRelativeHeight(12.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipped()
                                                    .padding(.bottom, getRelativeHeight(4.0))
                                                    .onTapGesture {
                                                        self.presentationMode.wrappedValue.dismiss()
                                                    }
                                                Text(StringConstants.kLblMay2021)
                                                    .font(FontScheme
                                                        .kPoppinsRegular(size: getRelativeHeight(14.0)))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(ColorConstants.Gray500)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(63.0),
                                                           height: getRelativeHeight(16.0),
                                                           alignment: .topLeading)
                                                    .padding(.leading, getRelativeWidth(37.0))
                                                Image("img_arrowright_gray_500")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(6.0),
                                                           height: getRelativeHeight(12.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipped()
                                                    .padding(.bottom, getRelativeHeight(4.0))
                                                    .padding(.leading, getRelativeWidth(37.0))
                                            }
                                            .frame(width: getRelativeWidth(151.0),
                                                   height: getRelativeHeight(17.0),
                                                   alignment: .center)
                                            .padding(.top, getRelativeHeight(4.0))
                                            .padding(.horizontal, getRelativeWidth(141.0))
                                            HStack {
                                                Spacer()
                                                VStack {
                                                    Text(StringConstants.kLblWed)
                                                        .font(FontScheme
                                                            .kInterRegular(size: getRelativeHeight(12.0)))
                                                        .fontWeight(.regular)
                                                        .foregroundColor(ColorConstants.Gray600)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(26.0),
                                                               height: getRelativeHeight(12.0),
                                                               alignment: .topLeading)
                                                        .padding(.top, getRelativeHeight(19.0))
                                                        .padding(.horizontal,
                                                                 getRelativeWidth(17.0))
                                                    Text(StringConstants.kLbl12)
                                                        .font(FontScheme
                                                            .kInterMedium(size: getRelativeHeight(14.0)))
                                                        .fontWeight(.medium)
                                                        .foregroundColor(ColorConstants.Gray600)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(16.0),
                                                               height: getRelativeHeight(14.0),
                                                               alignment: .topLeading)
                                                        .padding(.top, getRelativeHeight(16.0))
                                                        .padding(.bottom, getRelativeHeight(18.0))
                                                        .padding(.horizontal,
                                                                 getRelativeWidth(17.0))
                                                }
                                                .frame(width: getRelativeWidth(60.0),
                                                       height: getRelativeHeight(80.0),
                                                       alignment: .center)
                                                .background(RoundedCorners(topLeft: 10.0,
                                                                           topRight: 10.0,
                                                                           bottomLeft: 10.0,
                                                                           bottomRight: 10.0)
                                                        .fill(ColorConstants.Gray50))
                                                VStack {
                                                    Text(StringConstants.kLblThus)
                                                        .font(FontScheme
                                                            .kInterRegular(size: getRelativeHeight(12.0)))
                                                        .fontWeight(.regular)
                                                        .foregroundColor(ColorConstants.Gray600)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(29.0),
                                                               height: getRelativeHeight(12.0),
                                                               alignment: .topLeading)
                                                        .padding(.top, getRelativeHeight(19.0))
                                                        .padding(.horizontal,
                                                                 getRelativeWidth(15.0))
                                                    Text(StringConstants.kLbl13)
                                                        .font(FontScheme
                                                            .kInterMedium(size: getRelativeHeight(14.0)))
                                                        .fontWeight(.medium)
                                                        .foregroundColor(ColorConstants.Gray600)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(16.0),
                                                               height: getRelativeHeight(14.0),
                                                               alignment: .topLeading)
                                                        .padding(.top, getRelativeHeight(16.0))
                                                        .padding(.bottom, getRelativeHeight(18.0))
                                                        .padding(.horizontal,
                                                                 getRelativeWidth(15.0))
                                                }
                                                .frame(width: getRelativeWidth(60.0),
                                                       height: getRelativeHeight(80.0),
                                                       alignment: .center)
                                                .background(RoundedCorners(topLeft: 10.0,
                                                                           topRight: 10.0,
                                                                           bottomLeft: 10.0,
                                                                           bottomRight: 10.0)
                                                        .fill(ColorConstants.Gray50))
                                                .padding(.leading, getRelativeWidth(15.0))
                                                VStack {
                                                    Text(StringConstants.kLblFri)
                                                        .font(FontScheme
                                                            .kInterRegular(size: getRelativeHeight(12.0)))
                                                        .fontWeight(.regular)
                                                        .foregroundColor(ColorConstants.WhiteA701)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(15.0),
                                                               height: getRelativeHeight(12.0),
                                                               alignment: .topLeading)
                                                        .padding(.top, getRelativeHeight(19.0))
                                                        .padding(.horizontal,
                                                                 getRelativeWidth(22.0))
                                                    Text(StringConstants.kLbl14)
                                                        .font(FontScheme
                                                            .kInterMedium(size: getRelativeHeight(14.0)))
                                                        .fontWeight(.medium)
                                                        .foregroundColor(ColorConstants.WhiteA701)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(16.0),
                                                               height: getRelativeHeight(14.0),
                                                               alignment: .topLeading)
                                                        .padding(.top, getRelativeHeight(16.0))
                                                        .padding(.bottom, getRelativeHeight(18.0))
                                                        .padding(.horizontal,
                                                                 getRelativeWidth(22.0))
                                                }
                                                .frame(width: getRelativeWidth(60.0),
                                                       height: getRelativeHeight(80.0),
                                                       alignment: .center)
                                                .background(RoundedCorners(topLeft: 10.0,
                                                                           topRight: 10.0,
                                                                           bottomLeft: 10.0,
                                                                           bottomRight: 10.0)
                                                        .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                                    .IndigoA102,
                                                                ColorConstants
                                                                    .Blue200]),
                                                            startPoint: .topLeading,
                                                            endPoint: .bottomTrailing)))
                                                .padding(.leading, getRelativeWidth(15.0))
                                                VStack {
                                                    Text(StringConstants.kLblSat)
                                                        .font(FontScheme
                                                            .kInterRegular(size: getRelativeHeight(12.0)))
                                                        .fontWeight(.regular)
                                                        .foregroundColor(ColorConstants.Gray600)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(19.0),
                                                               height: getRelativeHeight(12.0),
                                                               alignment: .topLeading)
                                                        .padding(.top, getRelativeHeight(19.0))
                                                        .padding(.horizontal,
                                                                 getRelativeWidth(21.0))
                                                    Text(StringConstants.kLbl15)
                                                        .font(FontScheme
                                                            .kInterMedium(size: getRelativeHeight(14.0)))
                                                        .fontWeight(.medium)
                                                        .foregroundColor(ColorConstants.Gray600)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(16.0),
                                                               height: getRelativeHeight(14.0),
                                                               alignment: .topLeading)
                                                        .padding(.top, getRelativeHeight(16.0))
                                                        .padding(.bottom, getRelativeHeight(18.0))
                                                        .padding(.horizontal,
                                                                 getRelativeWidth(21.0))
                                                }
                                                .frame(width: getRelativeWidth(60.0),
                                                       height: getRelativeHeight(80.0),
                                                       alignment: .center)
                                                .background(RoundedCorners(topLeft: 10.0,
                                                                           topRight: 10.0,
                                                                           bottomLeft: 10.0,
                                                                           bottomRight: 10.0)
                                                        .fill(ColorConstants.Gray50))
                                                .padding(.leading, getRelativeWidth(15.0))
                                                VStack {
                                                    Text(StringConstants.kLblSun)
                                                        .font(FontScheme
                                                            .kInterRegular(size: getRelativeHeight(12.0)))
                                                        .fontWeight(.regular)
                                                        .foregroundColor(ColorConstants.Gray600)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(22.0),
                                                               height: getRelativeHeight(12.0),
                                                               alignment: .topLeading)
                                                        .padding(.top, getRelativeHeight(19.0))
                                                        .padding(.horizontal,
                                                                 getRelativeWidth(19.0))
                                                    Text(StringConstants.kLbl16)
                                                        .font(FontScheme
                                                            .kInterMedium(size: getRelativeHeight(14.0)))
                                                        .fontWeight(.medium)
                                                        .foregroundColor(ColorConstants.Gray600)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(16.0),
                                                               height: getRelativeHeight(14.0),
                                                               alignment: .topLeading)
                                                        .padding(.top, getRelativeHeight(16.0))
                                                        .padding(.bottom, getRelativeHeight(18.0))
                                                        .padding(.horizontal,
                                                                 getRelativeWidth(19.0))
                                                }
                                                .frame(width: getRelativeWidth(60.0),
                                                       height: getRelativeHeight(80.0),
                                                       alignment: .center)
                                                .background(RoundedCorners(topLeft: 10.0,
                                                                           topRight: 10.0,
                                                                           bottomLeft: 10.0,
                                                                           bottomRight: 10.0)
                                                        .fill(ColorConstants.Gray50))
                                                .padding(.leading, getRelativeWidth(15.0))
                                            }
                                            .frame(width: UIScreen.main.bounds.width,
                                                   height: getRelativeHeight(80.0),
                                                   alignment: .leading)
                                            .background(RoundedCorners(topLeft: 10.0,
                                                                       topRight: 10.0,
                                                                       bottomLeft: 10.0,
                                                                       bottomRight: 10.0))
                                            .padding(.top, getRelativeHeight(15.0))
                                        }
                                        .frame(width: UIScreen.main.bounds.width,
                                               height: getRelativeHeight(117.0),
                                               alignment: .bottomTrailing)
                                        .padding(.top, getRelativeHeight(18.0))
                                        Button(action: {
                                            self.presentationMode.wrappedValue.dismiss()
                                        }, label: {
                                            Image("img_arrowleft")
                                        })
                                        .frame(width: getRelativeWidth(42.0),
                                               height: getRelativeHeight(40.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 9.0, topRight: 9.0,
                                                                   bottomLeft: 9.0,
                                                                   bottomRight: 9.0)
                                                .fill(ColorConstants.IndigoA20059))
                                        .padding(.bottom, getRelativeHeight(95.0))
                                        .padding(.trailing, getRelativeWidth(311.0))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: UIScreen.main.bounds.width,
                                           height: getRelativeHeight(135.0), alignment: .leading)
                                }
                                .padding(.top, getRelativeHeight(14.0))
                                ZStack(alignment: .leading) {
                                    HStack {
                                        Text(StringConstants.kLblBreakfast)
                                            .font(FontScheme
                                                .kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Gray900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(79.0),
                                                   height: getRelativeHeight(16.0),
                                                   alignment: .topLeading)
                                        Text(StringConstants.kMsg2Meals230C)
                                            .font(FontScheme
                                                .kPoppinsMedium(size: getRelativeHeight(12.0)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.Gray500)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(131.0),
                                                   height: getRelativeHeight(12.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(105.0))
                                    }
                                    .frame(width: getRelativeWidth(315.0),
                                           height: getRelativeHeight(16.0),
                                           alignment: .bottomLeading)
                                    ZStack {
                                        Image("img_button")
                                            .resizable()
                                            .frame(width: getRelativeWidth(8.0),
                                                   height: getRelativeHeight(6.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.top, getRelativeHeight(6.18))
                                            .padding(.bottom, getRelativeHeight(5.82))
                                            .padding(.horizontal, getRelativeWidth(7.92))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(24.0),
                                           height: getRelativeHeight(18.0), alignment: .leading)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                        .IndigoA102,
                                                    ColorConstants
                                                        .Blue200]),
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing)))
                                    .padding(.leading, getRelativeWidth(89.0))
                                    .padding(.trailing, getRelativeWidth(202.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(315.0),
                                       height: getRelativeHeight(18.0), alignment: .trailing)
                                .padding(.top, getRelativeHeight(54.0))
                                .padding(.horizontal, getRelativeWidth(30.0))
                                VStack(spacing: 0) {
                                    ScrollView(.vertical, showsIndicators: false) {
                                        LazyVStack {
                                            ForEach(0 ... 1, id: \.self) { index in
                                                BreakfastCardCell()
                                            }
                                        }
                                    }
                                }
                                .frame(width: getRelativeWidth(312.0), alignment: .trailing)
                                .padding(.top, getRelativeHeight(18.0))
                                .padding(.horizontal, getRelativeWidth(32.0))
                                ZStack(alignment: .bottomLeading) {
                                    HStack {
                                        Text(StringConstants.kLblLunch)
                                            .font(FontScheme
                                                .kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Gray900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(49.0),
                                                   height: getRelativeHeight(16.0),
                                                   alignment: .topLeading)
                                        Text(StringConstants.kMsg2Meals500C)
                                            .font(FontScheme
                                                .kPoppinsMedium(size: getRelativeHeight(12.0)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.Gray500)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(132.0),
                                                   height: getRelativeHeight(12.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(134.0))
                                    }
                                    .frame(width: getRelativeWidth(315.0),
                                           height: getRelativeHeight(16.0), alignment: .topLeading)
                                    .padding(.bottom, getRelativeHeight(7.0))
                                    ZStack {
                                        Image("img_button")
                                            .resizable()
                                            .frame(width: getRelativeWidth(8.0),
                                                   height: getRelativeHeight(6.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.top, getRelativeHeight(6.18))
                                            .padding(.bottom, getRelativeHeight(5.82))
                                            .padding(.horizontal, getRelativeWidth(7.92))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(24.0),
                                           height: getRelativeHeight(18.0),
                                           alignment: .bottomLeading)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                        .IndigoA102,
                                                    ColorConstants
                                                        .Blue200]),
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing)))
                                    .padding(.top, getRelativeHeight(4.85))
                                    .padding(.trailing, getRelativeWidth(226.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(315.0),
                                       height: getRelativeHeight(23.0), alignment: .trailing)
                                .padding(.top, getRelativeHeight(24.0))
                                .padding(.horizontal, getRelativeWidth(30.0))
                                VStack(spacing: 0) {
                                    ScrollView(.vertical, showsIndicators: false) {
                                        LazyVStack {
                                            ForEach(0 ... 1, id: \.self) { index in
                                                StackchickensteakCell()
                                            }
                                        }
                                    }
                                }
                                .frame(width: getRelativeWidth(312.0), alignment: .trailing)
                                .padding(.top, getRelativeHeight(11.0))
                                .padding(.horizontal, getRelativeWidth(32.0))
                                ZStack(alignment: .bottomLeading) {
                                    HStack {
                                        Text(StringConstants.kLblSnacks)
                                            .font(FontScheme
                                                .kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Gray900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(59.0),
                                                   height: getRelativeHeight(16.0),
                                                   alignment: .topLeading)
                                        Text(StringConstants.kMsg2Meals140C)
                                            .font(FontScheme
                                                .kPoppinsMedium(size: getRelativeHeight(12.0)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.Gray500)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(129.0),
                                                   height: getRelativeHeight(12.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(127.0))
                                    }
                                    .frame(width: getRelativeWidth(315.0),
                                           height: getRelativeHeight(16.0), alignment: .topLeading)
                                    ZStack {
                                        Image("img_button")
                                            .resizable()
                                            .frame(width: getRelativeWidth(8.0),
                                                   height: getRelativeHeight(6.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.top, getRelativeHeight(6.18))
                                            .padding(.bottom, getRelativeHeight(5.82))
                                            .padding(.horizontal, getRelativeWidth(7.92))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(24.0),
                                           height: getRelativeHeight(18.0),
                                           alignment: .bottomLeading)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                        .IndigoA102,
                                                    ColorConstants
                                                        .Blue200]),
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing)))
                                    .padding(.trailing, getRelativeWidth(221.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(315.0),
                                       height: getRelativeHeight(19.0), alignment: .trailing)
                                .padding(.top, getRelativeHeight(24.0))
                                .padding(.horizontal, getRelativeWidth(30.0))
                                VStack(spacing: 0) {
                                    ScrollView(.vertical, showsIndicators: false) {
                                        LazyVStack {
                                            ForEach(0 ... 1, id: \.self) { index in
                                                SnackCardCell()
                                            }
                                        }
                                    }
                                }
                                .frame(width: getRelativeWidth(312.0), alignment: .trailing)
                                .padding(.top, getRelativeHeight(15.0))
                                .padding(.horizontal, getRelativeWidth(32.0))
                            }
                            Group {
                                ZStack(alignment: .bottomLeading) {
                                    HStack {
                                        Text(StringConstants.kLblDinner)
                                            .font(FontScheme
                                                .kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Gray900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(54.0),
                                                   height: getRelativeHeight(16.0),
                                                   alignment: .topLeading)
                                        Text(StringConstants.kMsg2Meals120C)
                                            .font(FontScheme
                                                .kPoppinsMedium(size: getRelativeHeight(12.0)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.Gray500)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(128.0),
                                                   height: getRelativeHeight(12.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(133.0))
                                    }
                                    .frame(width: getRelativeWidth(315.0),
                                           height: getRelativeHeight(16.0), alignment: .topLeading)
                                    .padding(.bottom, getRelativeHeight(7.0))
                                    ZStack {
                                        Image("img_button")
                                            .resizable()
                                            .frame(width: getRelativeWidth(8.0),
                                                   height: getRelativeHeight(6.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.top, getRelativeHeight(6.18))
                                            .padding(.bottom, getRelativeHeight(5.82))
                                            .padding(.horizontal, getRelativeWidth(7.92))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(24.0),
                                           height: getRelativeHeight(18.0),
                                           alignment: .bottomLeading)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                        .IndigoA102,
                                                    ColorConstants
                                                        .Blue200]),
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing)))
                                    .padding(.top, getRelativeHeight(4.66))
                                    .padding(.trailing, getRelativeWidth(220.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(315.0),
                                       height: getRelativeHeight(23.0), alignment: .trailing)
                                .padding(.top, getRelativeHeight(23.0))
                                .padding(.horizontal, getRelativeWidth(30.0))
                                VStack(spacing: 0) {
                                    ScrollView(.vertical, showsIndicators: false) {
                                        LazyVStack {
                                            ForEach(0 ... 1, id: \.self) { index in
                                                DinnerCardCell()
                                            }
                                        }
                                    }
                                }
                                .frame(width: getRelativeWidth(312.0), alignment: .trailing)
                                .padding(.top, getRelativeHeight(11.0))
                                .padding(.horizontal, getRelativeWidth(32.0))
                                HStack {
                                    Text(StringConstants.kLblFat)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(18.0),
                                               height: getRelativeHeight(12.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(10.0))
                                    Spacer()
                                    Text(StringConstants.kLblProtein)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(40.0),
                                               height: getRelativeHeight(12.0),
                                               alignment: .topLeading)
                                        .padding(.bottom, getRelativeHeight(10.0))
                                        .padding(.leading, getRelativeWidth(197.0))
                                }
                                .frame(width: getRelativeWidth(256.0),
                                       height: getRelativeHeight(22.0), alignment: .trailing)
                                .padding(.top, getRelativeHeight(88.0))
                                .padding(.horizontal, getRelativeWidth(34.0))
                                Text(StringConstants.kLblCarbs)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(35.0),
                                           height: getRelativeHeight(12.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(177.0))
                                    .padding(.horizontal, getRelativeWidth(151.0))
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
                                    .padding(.vertical, getRelativeHeight(4.0))
                                    .padding(.horizontal, getRelativeWidth(23.0))
                                }
                                .frame(width: getRelativeWidth(369.0),
                                       height: getRelativeHeight(77.0), alignment: .trailing)
                                .background(ColorConstants.Gray50Ef)
                                .padding(.top, getRelativeHeight(11.0))
                                .padding(.leading, getRelativeWidth(10.0))
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                    }
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height,
                       alignment: .topLeading)
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

struct NutritionView_Previews: PreviewProvider {
    static var previews: some View {
        NutritionView()
    }
}
