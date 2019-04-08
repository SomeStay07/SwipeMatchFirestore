//
//  TopNavigationStackView.swift
//  SwipeMatchFirestore
//
//  Created by Тимур Чеберда on 08/04/2019.
//  Copyright © 2019 Tmur Cheberda. All rights reserved.
//

import UIKit

class TopNavigationStackView: UIStackView {
    
    let settingsButton = UIButton(type: .system)
    let messageButton = UIButton(type: .system)
    let fireImageView = UIImageView(image: #imageLiteral(resourceName: "7"))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        heightAnchor.constraint(equalToConstant: 80).isActive = true
        settingsButton.setImage(#imageLiteral(resourceName: "6").withRenderingMode(.alwaysOriginal), for: .normal)
        fireImageView.contentMode = .scaleAspectFit
        messageButton.setImage(#imageLiteral(resourceName: "8").withRenderingMode(.alwaysOriginal), for: .normal)
        
        [settingsButton,UIView(),fireImageView,UIView(),messageButton].forEach { (v) in
            addArrangedSubview(v)
        }
        
        distribution = .equalCentering
        isLayoutMarginsRelativeArrangement = true
        layoutMargins = .init(top: 0, left: 12, bottom: 0, right: 12)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
