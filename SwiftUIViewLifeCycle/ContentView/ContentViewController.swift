//
//  ContentViewLifeCycle.swift
//  SwiftUIViewLifeCycle
//
//  Created by hoseung Lee on 2022/10/26.
//

import UIKit
import SwiftUI

extension ContentView {
  final class Controller: NiblessViewController {
    
    private weak var viewModel: ViewModel?
    
    init(viewModel: ViewModel) {
      self.viewModel = viewModel
      super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
      super.viewDidLoad()
      print(self, #function)
    }
    
    override func viewWillAppear(_ animated: Bool) {
      super.viewWillAppear(animated)
      print(self, #function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
      super.viewDidAppear(animated)
      print(self, #function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
      super.viewWillDisappear(animated)
      print(self, #function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
      super.viewDidDisappear(animated)
      print(self, #function)
    }
    
    deinit {
      print(self, #function)
    }
    
    struct Representable: UIViewControllerRepresentable {
      typealias UIViewControllerType = Controller
      private let viewModel: ViewModel
      
      init(viewModel: ViewModel) {
        self.viewModel = viewModel
      }
      
      func makeUIViewController(context: Context) -> ContentView.Controller {
          Controller(viewModel: viewModel)
      }
      
      func updateUIViewController(_ uiViewController: ContentView.Controller, context: Context) {
        
      }
    }
  }
}
