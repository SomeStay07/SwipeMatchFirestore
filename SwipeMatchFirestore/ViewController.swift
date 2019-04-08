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
    let cardsDeckView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        setupDummyCards()
    }
    
    fileprivate func setupDummyCards() {
        let cardView = CardView(frame: .zero)
        cardsDeckView.addSubview(cardView)
        cardView.fillSuperview()
    }
    
    //MARK:- Setup Layout
    fileprivate func setupLayout() {
        let overallStackView = UIStackView(arrangedSubviews: [topStackView,cardsDeckView,buttonsStackView])
        overallStackView.axis = .vertical
        view.addSubview(overallStackView)
        overallStackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor)
        overallStackView.isLayoutMarginsRelativeArrangement = true
        overallStackView.layoutMargins = .init(top: 0, left: 12, bottom: 0, right: 12)
        
        overallStackView.bringSubviewToFront(cardsDeckView)
    }
}

