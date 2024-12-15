//
//  AppViewBuilder.swift
//  AIChatApp
//
//  Created by Taqtile on 15/12/24.
//
import SwiftUI

struct AppViewBuilder<OnboardingView: View, TabBarView: View>: View {
  var showTabBar: Bool
  @ViewBuilder var onboardingView: OnboardingView
  @ViewBuilder var tabBarView: TabBarView

  var body: some View {
    ZStack {
      if showTabBar {
        tabBarView
          .transition(.move(edge: .trailing))
      } else {
        onboardingView
          .transition(.move(edge: .leading))
      }
    }
    .animation(.smooth, value: showTabBar)

  }
}
