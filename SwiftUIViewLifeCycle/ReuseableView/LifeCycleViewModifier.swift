//
//  LifeCycleViewModifier.swift
//  SwiftUIViewLifeCycle
//
//  Created by hoseung Lee on 2022/10/26.
//

import SwiftUI

struct LifeCycleModifier: ViewModifier {
  let handler: LifeCycleHandlerProtocol
  func body(content: Content) -> some View {
    content
      .overlay(
        LifeCycleController.Representable(handler: handler)
      )
  }
}

extension View {
  func lifeCycle(handler: LifeCycleHandlerProtocol) -> some View {
    modifier(LifeCycleModifier(handler: handler))
  }
}
