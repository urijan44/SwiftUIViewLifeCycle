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
    private var cancellables: Set<AnyCancellable> = []
    let lifeCycle = PassthroughSubject<LifeCycle, Never>()
    
    init() {
      bind()
    }
    
    private func bind() {
      lifeCycle
        .sink(receiveValue: lifeCycleHandling(_:))
        .store(in: &cancellables)
    }
    
    private func lifeCycleHandling(_ lifeCycle: LifeCycle) {
      print(lifeCycle)
      switch lifeCycle {
        case .viewDidLoad:
          return
        case .viewWillAppaer:
          return
        case .viewDidAppear:
          return
        case .viewWillDisappear:
          return
        case .viewDidDisappear:
          return
      }
    }
    
    func setController(_ controller: ContentView.Controller) {
      self.controller = controller
    }
    
    deinit {
      print(self, #function)
    }
  }
}
