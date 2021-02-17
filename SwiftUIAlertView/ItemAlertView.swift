//
//  ItemAlertView.swift
//  SwiftUIAlertView
//
//  Created by Kristaps Grinbergs on 14/02/2021.
//

import SwiftUI

struct User: Identifiable {
  let id: UUID
  let name: String
}

struct ItemAlertView: View {
  @State private var user: User?
  
  var body: some View {
    VStack {
      Button("Show alert") {
        user = User(id: UUID(), name: "Kristaps")
      }
      .alert(item: $user) { user in
        Alert(title: Text("Hello, \(user.name)!"))
      }
    }
  }
}

struct ItemAlertView_Previews: PreviewProvider {
  static var previews: some View {
    ItemAlertView()
  }
}
