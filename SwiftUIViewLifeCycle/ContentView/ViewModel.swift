//
//  ViewModel.swift
//  SwiftUIViewLifeCycle
//
//  Created by hoseung Lee on 2022/10/26.
//

import SwiftUI
import Combine

extension ContentView {
  final class ViewModel: ObservableObject {
    enum LifeCycle {
      case viewDidLoad
      case viewWillAppaer
      case viewDidAppear
      case viewWillDisappear
      case viewDidDisappear
    }
    
    enum Action {
      
    }
    
    enum State {
      
    }
    
    private weak var controller: ContentView.Controller?
    
    func setController(_ controller: ContentView.Controller) {
      self.controller = controller
    }
    
    deinit {
      print(self, #function)
    }
  }
}
