//
//  ViewModel.swift
//  SwiftUIViewLifeCycle
//
//  Created by hoseung Lee on 2022/10/26.
//

import SwiftUI
import Combine

extension ContentView {
  final class ViewModel: ObservableObject, LifeCycleHandlerProtocol {

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
        
    deinit {
      print(self, #function)
    }
  }
}
