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
      NavigationStack {
        Text("Explore")
          .navigationTitle("Explore")
      }
      .tabItem {
        Label("Explore", systemImage: "eyes")
      }

      NavigationStack {
        Text("Chat")
          .navigationTitle("Chat")
      }
      .tabItem {
        Label("Explore", systemImage: "bubble.left.and.bubble.right.fill")
      }

      NavigationStack {
        Text("Profile")
          .navigationTitle("Profile")
      }
      .tabItem {
        Label("Profile", systemImage: "person.fill")
      }
    }
  }
}

#Preview {
  TabBarView()
}
