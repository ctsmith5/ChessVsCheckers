//
//  GameBoardViewController.swift
//  Chess vs. Checkers
//
//  Created by Colin Smith on 4/18/19.
//  Copyright © 2019 Colin Smith. All rights reserved.
//

import UIKit

class GameBoardViewController: UIViewController {
    
    var safeArea: UILayoutGuide {
        return self.view.safeAreaLayoutGuide
    }
    override func loadView() {
        super.loadView()
        addAllSubViews()
        setupBoard()
//      createBoardStack()
//      constrainRedSquares()
//      constrainGraySquares()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
    }
    func setupBoard(){
        rowStack.translatesAutoresizingMaskIntoConstraints = false
        //create 8 squares alternating colors
        for col in 0...7{
        let newRow = generateRow(staggered: col % 2 == 0)
            
         rowStack.addArrangedSubview(newRow)
    }
        rowStack.spacing = 0
        //add constraits
        rowStack.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor).isActive = true
        rowStack.centerYAnchor.constraint(equalTo: safeArea.centerYAnchor).isActive = true
        // add a greater than 20pts from height at a high priority and change widthanchor constraint to a lower priority
        rowStack.widthAnchor.constraint(equalTo: safeArea.widthAnchor, multiplier: 0.9).isActive = true
//        rowStack.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 4).isActive = true
//        rowStack.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 16).isActive = true
//        rowStack.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -16).isActive = true
        rowStack.heightAnchor.constraint(equalTo: rowStack.widthAnchor).isActive = true
//        rowStack.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -16).isActive = true
    }
   
    
    
    func generateRow(staggered: Bool) -> UIStackView {
        let stackView = UIStackView()
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        var color: UIColor = staggered ? .red : .gray
        for _ in 0...7 {
            let square = createSquare(with: color)
            stackView.addArrangedSubview(square)
            color = color == .red ? .gray : .red
        }
        return stackView
    }

    func addAllSubViews(){
        
        view.addSubview(rowStack)
    }
    
    func createRow()-> UIStackView {
        let row = rowStack
        return row
        
    }
    func createSquare(with color: UIColor) -> UIView {
        let square = UIView()
        square.backgroundColor = color
        
        return square
    }
    
    let rowStack : UIStackView = {
        let row = UIStackView()
        row.axis = .vertical
        row.alignment = .fill
        row.distribution = .fillEqually
        return row
    }()
    
    let boardStack: UIStackView = {
        let rows = UIStackView()
        rows.axis = .vertical
        rows.distribution = .fillEqually
        return rows
    }()
    

    
    // MARK: - Navigation

   

}
