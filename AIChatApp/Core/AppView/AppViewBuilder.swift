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

private struct PreviewView: View {

  @State private var showTabBar: Bool = false

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
          Color.red.ignoresSafeArea()
          Text("TabBar")
        }
      }
    )
    .onTapGesture {
      showTabBar.toggle()
    }
  }
}

#Preview {
  PreviewView()
}
