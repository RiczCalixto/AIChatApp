//
//  AppView.swift
//  AIChatApp
//
//  Created by Taqtile on 15/12/24.
//

import SwiftUI

struct AppView: View {
  @AppStorage("showTabBar") private var showTabBar: Bool = false

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
          Text("Tabbar")
        }

      }
    )
    .onTapGesture {
      showTabBar.toggle()
    }
  }
}

#Preview {
  AppView()
}
