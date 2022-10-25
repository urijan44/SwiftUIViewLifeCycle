//
//  NiblessViewController.swift
//  SwiftUIViewLifeCycle
//
//  Created by hoseung Lee on 2022/10/26.
//

import UIKit

class NiblessViewController: UIViewController {
  override init(nibName nibNameOrNil: String? = nil, bundle nibBundleOrNil: Bundle? = nil) {
    super.init(nibName: nil, bundle: nil)
  }
  
  @available(*, unavailable)
  required init?(coder: NSCoder) {
    fatalError()
  }
}
