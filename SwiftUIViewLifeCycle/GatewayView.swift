//
//  GatewayView.swift
//  SwiftUIViewLifeCycle
//
//  Created by hoseung Lee on 2022/10/26.
//

import SwiftUI

struct GatewayView: View {
  var body: some View {
    NavigationStack {
      NavigationLink {
        ContentView(viewModel: ContentView.ViewModel())
      } label: {
        Text("다음")
      }
    }
  }
}

struct GatewayView_Previews: PreviewProvider {
  static var previews: some View {
    GatewayView()
  }
}
