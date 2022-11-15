import SwiftUI

struct AppnavigationView: View {
    @StateObject var appnavigationViewModel = AppnavigationViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        Text(StringConstants.kLblAppNavigation)
                            .font(Font.system(size: getRelativeHeight(20.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(23.0),
                                   alignment: .leading)
                            .padding(.vertical, getRelativeHeight(10.0))
                            .padding(.horizontal, getRelativeWidth(20.0))
                        Text(StringConstants.kMsgCheckYourApp)
                            .font(Font.system(size: getRelativeHeight(16.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(19.0),
                                   alignment: .leading)
                            .padding(.leading, getRelativeWidth(20.0))
                        Divider()
                            .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(1.0),
                                   alignment: .center)
                            .background(ColorConstants.Black900)
                            .padding(.top, getRelativeHeight(5.0))
                    }
                    .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(67.0))
                    .background(ColorConstants.WhiteA700)
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            Group {
                                VStack {
                                    Text(StringConstants.kLblFirstgreeting)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "FirstGreetingView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblSignup)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "SignupView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblSignuppagetwo)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "SignupPageTwoView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblLoginpage)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "LoginPageView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblHome)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "HomeView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblSettings)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "SettingsView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblNotification)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "NotificationView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblActivity)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "ActivityView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                            }
                            Group {
                                VStack {
                                    Text(StringConstants.kLblActivityone)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "ActivityOneView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblNutrition)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "NutritionView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblNutritionone)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "NutritionOneView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                            }
                        }
                        .frame(width: getRelativeWidth(375.0))
                        .background(ColorConstants.WhiteA700)
                    }
                }
                .frame(width: getRelativeWidth(375.0), alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: FirstGreetingView(),
                                   tag: "FirstGreetingView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: SignupView(),
                                   tag: "SignupView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: SignupPageTwoView(),
                                   tag: "SignupPageTwoView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: LoginPageView(),
                                   tag: "LoginPageView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: HomeView(),
                                   tag: "HomeView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: SettingsView(),
                                   tag: "SettingsView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: NotificationView(),
                                   tag: "NotificationView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ActivityView(),
                                   tag: "ActivityView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ActivityOneView(),
                                   tag: "ActivityOneView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: NutritionView(),
                                   tag: "NutritionView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
                Group {
                    NavigationLink(destination: NutritionOneView(),
                                   tag: "NutritionOneView",
                                   selection: $appnavigationViewModel.nextScreen,
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
    }
}

struct AppnavigationView_Previews: PreviewProvider {
    static var previews: some View {
        AppnavigationView()
    }
}
