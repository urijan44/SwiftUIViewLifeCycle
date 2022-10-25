//
//  ContentViewLifeCycle.swift
//  SwiftUIViewLifeCycle
//
//  Created by hoseung Lee on 2022/10/26.
//

import UIKit
import SwiftUI
import Combine

enum LifeCycle {
  case viewDidLoad
  case viewWillAppaer
  case viewDidAppear
  case viewWillDisappear
  case viewDidDisappear
}

protocol LifeCycleHandlerProtocol: AnyObject {
  var lifeCycle: PassthroughSubject<LifeCycle, Never> { get }
}

final class LifeCycleController: NiblessViewController {
  
  private weak var handler: LifeCycleHandlerProtocol?
  
  init(handler: LifeCycleHandlerProtocol) {
    self.handler = handler
    super.init(nibName: nil, bundle: nil)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    handler?.lifeCycle.send(.viewDidLoad)
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    handler?.lifeCycle.send(.viewWillAppaer)
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    handler?.lifeCycle.send(.viewDidAppear)
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    handler?.lifeCycle.send(.viewWillDisappear)
  }
  
  override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)
    handler?.lifeCycle.send(.viewDidDisappear)
  }
  
  deinit {
    print(self, #function)
  }
  
  struct Representable: UIViewControllerRepresentable {
    typealias UIViewControllerType = LifeCycleController
    private let handler: LifeCycleHandlerProtocol
    
    init(handler: LifeCycleHandlerProtocol) {
      self.handler = handler
    }
    
    func makeUIViewController(context: Context) -> LifeCycleController {
      LifeCycleController(handler: handler)
    }
    
    func updateUIViewController(_ uiViewController: LifeCycleController, context: Context) {
      
    }
  }
}
