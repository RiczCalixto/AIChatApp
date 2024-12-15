//
//  TabBarView.swift
//  AIChatApp
//
//  Created by Taqtile on 15/12/24.
//

import SwiftUI

struct TabBarView: View {
  var body: some View {
    TabView {
      ExploreView()
        .tabItem {
          Label("Explore", systemImage: "eyes")
        }

      ChatsView()
        .tabItem {
          Label("Explore", systemImage: "bubble.left.and.bubble.right.fill")
        }

      ProfileView()
        .tabItem {
          Label("Profile", systemImage: "person.fill")
        }
    }
  }
}

#Preview {
  TabBarView()
}
