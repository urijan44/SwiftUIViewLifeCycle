//
//  ContentView.swift
//  SwiftUIViewLifeCycle
//
//  Created by hoseung Lee on 2022/10/26.
//

import SwiftUI


struct ContentView: View {
  @ObservedObject private var viewModel: ViewModel
  var body: some View {
    VStack(spacing: 0) {
      Image(systemName: "globe")
        .imageScale(.large)
        .foregroundColor(.accentColor)
      Text("Hello, world!")
        .onAppear {
          print("ContentView on Appear")
        }
        .onDisappear {
          print("ContentView on Disappear")
        }
    }
    .lifeCycle(handler: viewModel)
    .padding()
  }
  
  init(viewModel: ViewModel) {
    self.viewModel = viewModel
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(viewModel: ContentView.ViewModel())
  }
}
