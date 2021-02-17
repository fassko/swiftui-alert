//
//  AlertViewMessage.swift
//  SwiftUIAlertView
//
//  Created by Kristaps Grinbergs on 14/02/2021.
//

import SwiftUI

struct AlertViewMessage: View {
  @State private var showAlert = false
  
  var body: some View {
    VStack {
      Button("Show alert") {
        showAlert = true
      }
      .alert(isPresented: $showAlert) {
        Alert(title: Text("Title"))
      }
    }
  }
}

struct AlertViewMessage_Previews: PreviewProvider {
  static var previews: some View {
    AlertViewMessage()
  }
}
