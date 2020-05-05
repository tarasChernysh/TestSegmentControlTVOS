//
//  TestSegmentedControl.swift
//  TVosTest
//
//  Created by Taras Chernysh on 05.05.2020.
//  Copyright © 2020 Taras Chernysh. All rights reserved.
//

import UIKit

class TestSegmentedControl: UISegmentedControl {
    
    override func shouldUpdateFocus(in context: UIFocusUpdateContext) -> Bool {
        //backgroundColor = .clear
        return true
    }
    
    override func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        
        coordinator.addCoordinatedAnimations({
            //self.backgroundColor = .clear
            //self.setNeedsFocusUpdate()
        })
        super.didUpdateFocus(in: context, with: coordinator)
    }
}
