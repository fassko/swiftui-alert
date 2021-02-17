//
//  AlertWithButtonsView.swift
//  SwiftUIAlertView
//
//  Created by Kristaps Grinbergs on 14/02/2021.
//

import SwiftUI

struct AlertWithButtonsView: View {
  @State private var showAlert = false
  
  var body: some View {
    VStack {
      Button("Show alert") {
        showAlert = true
      }
      .alert(isPresented: $showAlert) {
        Alert(title: Text("Do you want to delete this item?"),
              primaryButton: .cancel(),
              secondaryButton: .destructive(Text("Delete")) {
                print("Delete item")
              })
      }
    }
  }
}

struct AlertWithButtonsView_Previews: PreviewProvider {
  static var previews: some View {
    AlertWithButtonsView()
  }
}
