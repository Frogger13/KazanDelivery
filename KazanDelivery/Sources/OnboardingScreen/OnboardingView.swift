//
//  OnboardingSwiftUIView.swift
//  KazanDelivery
//
//  Created by Данил Габдуллин on 11.11.2024.
//

import SwiftUI
import LocalizationFramework

private extension OnboardingView {
    enum Constants {
        enum Colors {
            static let onboardingBackgroundColor = Color("OnboardingBackGroundColor")
            static let nextButtonBackgroundColor = Color("NextButtonBackgroundColor")
            static let whiteColor = Color("WhiteTextColor")
            static let nextButtonTextColor = Color("BlackTextColor")
        }
        enum Strings {
            static let nextButtonText = Localization.localize("next")
            static let onboardingHeaderStepOne = Localization.localize("onboardingHeaderStepOne")
            static let onboardingHeaderStepTwo = Localization.localize("onboardingHeaderStepTwo")
            static let onboardingHeaderStepThree = Localization.localize("onboardingHeaderStepThree")
            static let onboardingTextStepOne = Localization.localize("onboardingTextStepOne")
            static let onboardingTextStepTwo = Localization.localize("onboardingTextStepTwo")
            static let onboardingTextStepThree = Localization.localize("onboardingTextStepThree")
        }
        enum Images {
            static let chickenLegImage = "onboardingScreenChickenLeg"
        }
        enum Fonts {
            static let headerFont: UIFont = UIFont.ProjectFonts.Roboto.bold.size(of: 24)
            static let textFont = UIFont.ProjectFonts.Roboto.regular.size(of: 14)
            static let nextButtonFont: UIFont = UIFont.ProjectFonts.Roboto.bold.size(of: 24)
        }
    }
}

struct OnboardingView: View {
    @State private var pageSelected = 0
    
    var body: some View {
        let onboardingPages: [OnboardingPage] = [
            OnboardingPage(image: Constants.Images.chickenLegImage,
                               headerText: Constants.Strings.onboardingHeaderStepOne,
                               bodyText: Constants.Strings.onboardingTextStepOne),
            OnboardingPage(image: Constants.Images.chickenLegImage,
                               headerText: Constants.Strings.onboardingHeaderStepTwo,
                               bodyText: Constants.Strings.onboardingTextStepTwo),
            OnboardingPage(image: Constants.Images.chickenLegImage,
                               headerText: Constants.Strings.onboardingHeaderStepThree,
                               bodyText: Constants.Strings.onboardingTextStepThree)
        ]
        
        VStack {
            TabView(selection: $pageSelected){
                ForEach(onboardingPages) { page in
                    VStack {
                        Image(page.image)
                            .padding(.top, 292)
                            .padding(.leading, 35)
                            .padding(.trailing, 35)
                        Text(page.headerText)
                            .font(Font(Constants.Fonts.headerFont))
                            .foregroundColor(Constants.Colors.whiteColor)
                            .padding(.top, 20)
                        Text(page.bodyText)
                            .font(Font(Constants.Fonts.textFont))
                            .foregroundColor(Constants.Colors.whiteColor)
                            .multilineTextAlignment(.center)
                            .padding(.top, 23)
                            .frame(maxWidth: 271)
                        Spacer()
                        Button(action: {
                            pageSelected += 1
                        }) {
                            Text(Constants.Strings.nextButtonText)
                                .font(Font(Constants.Fonts.nextButtonFont))
                                .foregroundColor(Constants.Colors.nextButtonTextColor)
                                .padding()
                                .frame(maxWidth: .infinity)
                        }
                        .background(Constants.Colors.nextButtonBackgroundColor)
                        .cornerRadius(30)
                        .padding(.leading, 30)
                        .padding(.trailing, 30)
                        .padding(.bottom, 44)
                    }
                    
                }
            }
            .tabViewStyle(.page)
        }
        .background(Constants.Colors.onboardingBackgroundColor)
        .ignoresSafeArea()
    }
    
    
    
}

struct OnboardingPage: Identifiable {
    let id = UUID()
    var image: String
    var headerText: String
    var bodyText: String
    
//    var body: some View {
//        VStack {
//            Image(image)
//                .padding(.top, 292)
//                .padding(.leading, 35)
//                .padding(.trailing, 35)
//            Text(headerText)
//                .font(Font(OnboardingSwiftUIView.Constants.Fonts.headerFont))
//                .foregroundColor(OnboardingSwiftUIView.Constants.Colors.whiteColor)
//                .padding(.top, 20)
//            Text(bodyText)
//                .font(Font(OnboardingSwiftUIView.Constants.Fonts.textFont))
//                .foregroundColor(OnboardingSwiftUIView.Constants.Colors.whiteColor)
//                .multilineTextAlignment(.center)
//                .padding(.top, 23)
//                .frame(maxWidth: 271)
//        }
//        Spacer()
//        Button(action: {
//            print("Next Button Pressed")
//        }) {
//            Text(OnboardingSwiftUIView.Constants.Strings.nextButtonText)
//                .font(Font(OnboardingSwiftUIView.Constants.Fonts.nextButtonFont))
//                .foregroundColor(OnboardingSwiftUIView.Constants.Colors.nextButtonTextColor)
//                .padding()
//                .frame(maxWidth: .infinity)
//        }
//        .background(OnboardingSwiftUIView.Constants.Colors.nextButtonBackgroundColor)
//        .cornerRadius(30)
//        .padding(.leading, 30)
//        .padding(.trailing, 30)
//    }
    
}


#Preview {
    OnboardingView()
}
