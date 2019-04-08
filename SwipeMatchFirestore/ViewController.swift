//
//  ViewController.swift
//  SwipeMatchFirestore
//
//  Created by Тимур Чеберда on 08/04/2019.
//  Copyright © 2019 Tmur Cheberda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let topStackView = TopNavigationStackView()
    let buttonsStackView = HomeButtonsControlsStackView()
    let blueView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        blueView.backgroundColor = .blue
        
        setupLayout()
    }
    
    //MARK:- Setup Layout
    fileprivate func setupLayout() {
        let overallStackView = UIStackView(arrangedSubviews: [topStackView,blueView,buttonsStackView])
        overallStackView.axis = .vertical
        view.addSubview(overallStackView)
        overallStackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor)
    }
}

