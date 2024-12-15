//
//  AppView.swift
//  AIChatApp
//
//  Created by Taqtile on 15/12/24.
//

import SwiftUI

struct AppView: View {
  //  @AppStorage("showTabBar") var showTabBar: Bool = false
  @AppStorage("showTabbarView") var showTabBar: Bool = false

  var body: some View {
    AppViewBuilder(
      showTabBar: showTabBar,
      onboardingView: {
        ZStack {
          Color.blue.ignoresSafeArea()
          Text("Onboarding")
        }
      },
      tabBarView: {
        ZStack {
          Color.green.ignoresSafeArea()
          Text("TabBar")
        }
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
