//
//  Segmented+Extension.swift
//  TVosTest
//
//  Created by Taras Chernysh on 05.05.2020.
//  Copyright © 2020 Taras Chernysh. All rights reserved.
//

import UIKit

extension UISegmentedControl {
  private enum GUI {
    static let focusedBackgroundColor = UIColor.lightGray
    static let focusedBorderWidth: CGFloat = 4
    static let focusedCornerRadius: CGFloat = 4
    
    static let unfocusedBackgroundColor = UIColor.clear
    static let unfocusedBorderWidth: CGFloat = 0
    static let unfocusedCornerRadius: CGFloat = 4
  }
  
  func configureBB() {
    let attributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    let focusedAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
    
    setTitleTextAttributes(attributes as [NSAttributedString.Key: Any], for: .normal)
    setTitleTextAttributes(attributes as [NSAttributedString.Key: Any], for: .highlighted)
    setTitleTextAttributes(attributes as [NSAttributedString.Key: Any], for: .selected)
    setTitleTextAttributes(focusedAttributes as [NSAttributedString.Key: Any], for: .focused)

    
    tintColor = UIColor.yellow
    backgroundColor = .clear
    layer.borderWidth = 1
    layer.borderColor = UIColor.white.cgColor
    self.addSeparates()
  }
  
  func addSeparates() {
    for i in 1...self.subviews.count - 1 {
      let view = self.subviews[i]
      let sep = UIView(frame: CGRect(x: view.frame.width - 1, y: 1, width: 1, height: self.frame.height - 2))
        sep.backgroundColor = .white
      view.addSubview(sep)
    }
  }
  
  func updateLastSegment() {
    subviews.last.flatMap { updateSegmentFocus(for: $0) }
  }
  
  private func updateSegmentFocus(for view: UIView, isFocused: Bool = true) {
    view.backgroundColor = isFocused ? GUI.focusedBackgroundColor : GUI.unfocusedBackgroundColor
    //view.backgroundColor = R.color.mainOrangeColor()
    //view.layer.borderColor = isFocused ? GUI.focusedBorderColor : GUI.unfocusedBorderColor
    //view.layer.borderWidth = isFocused ? GUI.focusedBorderWidth : GUI.unfocusedBorderWidth
    view.layer.cornerRadius = isFocused ? GUI.focusedCornerRadius : GUI.unfocusedCornerRadius
  }
  
  func updateIfFocused() {
    subviews.forEach {
      updateSegmentFocus(for: $0, isFocused: $0.isFocused)
    }
  }
}
