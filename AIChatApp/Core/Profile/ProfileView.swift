//
//  ProfileView.swift
//  AIChatApp
//
//  Created by Taqtile on 15/12/24.
//
import SwiftUI

struct ProfileView: View {
  @State var showSettings: Bool = false

  private func handleShowSettings() {
    showSettings = true
  }

  private var settingsButton: some View {
    Button {
      handleShowSettings()
    } label: {
      Image(systemName: "gear")
        .font(.headline)
    }
  }

  var body: some View {
    NavigationStack {
      Text("Profile")
        .navigationTitle("Profile")
        .toolbar {
          ToolbarItem(placement: .topBarTrailing) {
            settingsButton
          }
        }
        .sheet(isPresented: $showSettings) {
          Text("Showing settings")
        }
    }
  }
}

#Preview {
  ProfileView()
}
