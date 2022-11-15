import SwiftUI

struct NutritionOneView: View {
    @StateObject var nutritionOneViewModel = NutritionOneViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
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
                }
                .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(33.0),
                       alignment: .leading)
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
                    .padding(.horizontal, getRelativeWidth(20.0))
                }
                .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(40.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(29.0))
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblEnterNutrition)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Gray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(120.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(20.0))
                            .padding(.horizontal, getRelativeWidth(16.0))
                        Group {
                            HStack {
                                TextField(StringConstants.kLblFoodName,
                                          text: $nutritionOneViewModel.labelText)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .foregroundColor(ColorConstants.Gray500)
                                    .padding()
                                    .keyboardType(.alphabet)
                            }
                            .onChange(of: nutritionOneViewModel.labelText) { newValue in

                                nutritionOneViewModel.isValidLabelText = newValue
                                    .isText(isMandatory: false)
                            }
                            .frame(width: getRelativeWidth(224.0), height: getRelativeHeight(37.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                    bottomRight: 14.0)
                                    .stroke(ColorConstants.Gray50,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                       bottomLeft: 14.0, bottomRight: 14.0)
                                    .fill(ColorConstants.Gray50))
                            .padding(.top, getRelativeHeight(17.0))
                            .padding(.horizontal, getRelativeWidth(16.0))
                            if !nutritionOneViewModel.isValidLabelText {
                                Text("Please enter valid text.")
                                    .foregroundColor(Color.red)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .frame(width: getRelativeWidth(224.0),
                                           height: getRelativeHeight(37.0), alignment: .center)
                            }
                        }
                        HStack {
                            TextField(StringConstants.kLblCalories,
                                      text: $nutritionOneViewModel.labeloneText)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .foregroundColor(ColorConstants.Gray500)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(224.0), height: getRelativeHeight(37.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                bottomRight: 14.0)
                                .stroke(ColorConstants.Gray50,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                   bottomRight: 14.0)
                                .fill(ColorConstants.Gray50))
                        .padding(.top, getRelativeHeight(13.0))
                        .padding(.horizontal, getRelativeWidth(16.0))
                        HStack {
                            TextField(StringConstants.kLblWater,
                                      text: $nutritionOneViewModel.labeltwoText)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .foregroundColor(ColorConstants.Gray500)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(224.0), height: getRelativeHeight(37.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                bottomRight: 14.0)
                                .stroke(ColorConstants.Gray50,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                   bottomRight: 14.0)
                                .fill(ColorConstants.Gray50))
                        .padding(.top, getRelativeHeight(13.0))
                        .padding(.horizontal, getRelativeWidth(16.0))
                        HStack {
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(64.0),
                                       height: getRelativeHeight(41.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0)
                                        .fill(ColorConstants.Gray50))
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(64.0),
                                       height: getRelativeHeight(42.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0)
                                        .fill(ColorConstants.Gray50))
                                .padding(.leading, getRelativeWidth(17.0))
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(64.0),
                                       height: getRelativeHeight(42.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0)
                                        .fill(ColorConstants.Gray50))
                                .padding(.leading, getRelativeWidth(17.0))
                        }
                        .frame(width: getRelativeWidth(226.0), height: getRelativeHeight(42.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(10.0))
                        .padding(.horizontal, getRelativeWidth(16.0))
                        HStack {
                            HStack {
                                Text(StringConstants.kLblProtein)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray500)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(42.0),
                                           height: getRelativeHeight(12.0), alignment: .topLeading)
                                Text(StringConstants.kLblCarbs)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray500)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(37.0),
                                           height: getRelativeHeight(12.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(43.0))
                            }
                            .frame(width: getRelativeWidth(122.0), height: getRelativeHeight(12.0),
                                   alignment: .center)
                            Text(StringConstants.kLblFat)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray500)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(19.0),
                                       height: getRelativeHeight(12.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(52.0))
                        }
                        .frame(width: getRelativeWidth(193.0), height: getRelativeHeight(12.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(8.0))
                        .padding(.horizontal, getRelativeWidth(49.0))
                        HStack {
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(64.0),
                                       height: getRelativeHeight(41.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0)
                                        .fill(ColorConstants.Gray50))
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(64.0),
                                       height: getRelativeHeight(42.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0)
                                        .fill(ColorConstants.Gray50))
                                .padding(.leading, getRelativeWidth(21.0))
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(64.0),
                                       height: getRelativeHeight(42.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0)
                                        .fill(ColorConstants.Gray50))
                                .padding(.leading, getRelativeWidth(19.0))
                            Spacer()
                        }
                        .frame(width: getRelativeWidth(232.0), height: getRelativeHeight(42.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(22.0))
                        .padding(.horizontal, getRelativeWidth(16.0))
                        HStack {
                            Text(StringConstants.kLblSodium)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray500)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(46.0),
                                       height: getRelativeHeight(12.0), alignment: .topLeading)
                            Text(StringConstants.kLblSugar)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray500)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(35.0),
                                       height: getRelativeHeight(12.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(47.0))
                            Text(StringConstants.kLblFiber)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray500)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(28.0),
                                       height: getRelativeHeight(12.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(43.0))
                            Spacer()
                        }
                        .frame(width: getRelativeWidth(200.0), height: getRelativeHeight(14.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(7.0))
                        .padding(.horizontal, getRelativeWidth(42.0))
                        Button(action: {}, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblSave)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.bold)
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(21.0))
                                    .foregroundColor(ColorConstants.WhiteA701)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(290.0),
                                           height: getRelativeHeight(58.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 29.0, topRight: 29.0,
                                                               bottomLeft: 29.0, bottomRight: 29.0)
                                            .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                        .IndigoA102,
                                                    ColorConstants
                                                        .Blue200]),
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing)))
                                    .shadow(color: ColorConstants.IndigoA1004c, radius: 22, x: 0,
                                            y: 10)
                                    .padding(.vertical, getRelativeHeight(69.0))
                                    .padding(.leading, getRelativeWidth(16.0))
                                    .padding(.trailing, getRelativeWidth(9.0))
                            }
                        })
                        .frame(width: getRelativeWidth(290.0), height: getRelativeHeight(58.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 29.0, topRight: 29.0, bottomLeft: 29.0,
                                                   bottomRight: 29.0)
                                .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                            .IndigoA102,
                                        ColorConstants
                                            .Blue200]),
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing)))
                        .shadow(color: ColorConstants.IndigoA1004c, radius: 22, x: 0, y: 10)
                        .padding(.vertical, getRelativeHeight(69.0))
                        .padding(.leading, getRelativeWidth(16.0))
                        .padding(.trailing, getRelativeWidth(9.0))
                    }
                    .frame(width: getRelativeWidth(315.0), height: getRelativeHeight(505.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                               bottomRight: 16.0)
                            .fill(ColorConstants.Blue50))
                    .shadow(color: ColorConstants.Gray90011, radius: 40, x: 0, y: 10)
                    .padding(.horizontal, getRelativeWidth(25.0))
                }
                .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(505.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(51.0))
                VStack(alignment: .leading, spacing: 0) {
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
                        .padding(.horizontal, getRelativeWidth(37.0))
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
                        .padding(.horizontal, getRelativeWidth(37.0))
                    }
                    .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(77.0),
                           alignment: .leading)
                    .background(ColorConstants.Gray50Ef)
                }
                .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(77.0),
                       alignment: .leading)
                .padding(.vertical, getRelativeHeight(58.0))
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

struct NutritionOneView_Previews: PreviewProvider {
    static var previews: some View {
        NutritionOneView()
    }
}
