//
//  vc2.swift
//  collectionViewTest
//
//  Created by Lucas Dahl on 1/7/19.
//  Copyright © 2019 Lucas Dahl. All rights reserved.
//

import Foundation
import UIKit

class vcTwo: UIViewController {
    
    // Dismiss the vc
    @IBAction func dismissTapped(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    // Used to make sure that their are no retain cycles 
    deinit {
        print("Reclaim")
    }
    
}
