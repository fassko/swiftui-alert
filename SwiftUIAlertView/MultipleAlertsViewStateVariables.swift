//
//  MultipleAlertsViewStateVariables.swift
//  SwiftUIAlertView
//
//  Created by Kristaps Grinbergs on 17/02/2021.
//

import SwiftUI

struct MultipleAlertsViewStateVariables: View {
  @State var firstAlertShown = false
  @State var secondAlertShown = false
  
  var body: some View {
    VStack(spacing: 50) {
      Button("Show first alert") {
        firstAlertShown = true
      }
      .alert(isPresented: $firstAlertShown) {
        Alert(title: Text("First alert"))
      }
      
      Button("Show second alert") {
        secondAlertShown = true
      }
      .alert(isPresented: $secondAlertShown) {
        Alert(title: Text("Second alert"))
      }
    }
  }
}

struct MultipleAlertsViewStateVariables_Previews: PreviewProvider {
  static var previews: some View {
    MultipleAlertsViewStateVariables()
  }
}
