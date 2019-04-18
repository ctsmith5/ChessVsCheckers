//
//  GameBoardViewController.swift
//  Chess vs. Checkers
//
//  Created by Colin Smith on 4/18/19.
//  Copyright © 2019 Colin Smith. All rights reserved.
//

import UIKit

class GameBoardViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    let redSquare : UIView = {
        let redSquare = UIView()
        return redSquare
        
    }()
    
    let rowStack : UIStackView = {
        let row = UIStackView()
        row.axis = .horizontal
        return row
    }()
    

    
    // MARK: - Navigation

   

}
