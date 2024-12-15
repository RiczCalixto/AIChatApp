//
//  AppView.swift
//  AIChatApp
//
//  Created by Taqtile on 15/12/24.
//

import SwiftUI

struct AppView: View {
  @AppStorage("showTabbarView") var showTabBar: Bool = false

  var body: some View {
    AppViewBuilder(
      showTabBar: showTabBar,
      onboardingView: {
        OnboardingView()
      },
      tabBarView: {
        TabBarView()
      }
    )
  }
}

#Preview("AppView - TabBar") {
  AppView(showTabBar: true)
}

#Preview("AppView - Onboarding") {
  AppView(showTabBar: false)
}
