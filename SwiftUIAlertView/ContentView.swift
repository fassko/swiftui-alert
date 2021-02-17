//
//  ContentView.swift
//  SwiftUIAlertView
//
//  Created by Kristaps Grinbergs on 14/02/2021.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView {
      List {
        NavigationLink("Alert", destination: AlertView())
        NavigationLink("Alert with message", destination: AlertView())
        NavigationLink("Alert with Item", destination: ItemAlertView())
        NavigationLink("Alert with buttons", destination: AlertWithButtonsView())
        NavigationLink("Multiple alerts on a view", destination: MultipleAlertsViewStateVariables())
        NavigationLink("Multiple alerts on a view with identifiable", destination: MultipleAlertsViewIdentifiable())
      }
      .navigationTitle("Alerts")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
