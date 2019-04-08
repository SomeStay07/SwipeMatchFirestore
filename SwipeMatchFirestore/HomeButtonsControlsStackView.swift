//
//  HomeButtonsControlsStackView.swift
//  SwipeMatchFirestore
//
//  Created by Тимур Чеберда on 08/04/2019.
//  Copyright © 2019 Tmur Cheberda. All rights reserved.
//

import UIKit

class HomeButtonsControlsStackView: UIStackView {
    
    let firstImage = #imageLiteral(resourceName: "1")
    let secondImage = #imageLiteral(resourceName: "2")
    let thirdImage = #imageLiteral(resourceName: "3")
    let fourthImage = #imageLiteral(resourceName: "4")
    let fivethImage = #imageLiteral(resourceName: "5")

    override init(frame: CGRect) {
        super.init(frame: frame)
        distribution = .fillEqually
        heightAnchor.constraint(equalToConstant: 95).isActive = true
        
        let subViews = [firstImage, secondImage, thirdImage, fourthImage, fivethImage].map { (img) -> UIView in
            let button = UIButton(type: .system)
            button.setImage(img.withRenderingMode(.alwaysOriginal), for: .normal)
            return button
        }
        
        subViews.forEach { (v) in
            addArrangedSubview(v)
        }        
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
