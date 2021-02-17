//
//  MultipleAlertsViewIdentifiable.swift
//  SwiftUIAlertView
//
//  Created by Kristaps Grinbergs on 17/02/2021.
//

import SwiftUI

struct AlertIdentifier: Identifiable {
  enum ActiveAlert {
    case first
    case second
    
    var alertView: Alert {
      switch self {
      case .first:
        return Alert(title: Text("First alert"))
      case .second:
        return Alert(title: Text("Second alert"))
      }
    }
  }
  
  var id: ActiveAlert
}

struct MultipleAlertsViewIdentifiable: View {
  @State var alert: AlertIdentifier?
  
  var body: some View {
    VStack(spacing: 50) {
      Button("Show first alert") {
        alert = AlertIdentifier(id: .first)
      }
      
      Button("Show second alert") {
        alert = AlertIdentifier(id: .second)
      }
    }
    .alert(item: $alert) {
      $0.id.alertView
    }
  }
}

struct MultipleAlertsViewIdentifiable_Previews: PreviewProvider {
  static var previews: some View {
    MultipleAlertsViewIdentifiable()
  }
}
