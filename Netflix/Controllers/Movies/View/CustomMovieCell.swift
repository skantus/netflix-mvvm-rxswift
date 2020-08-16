//
//  CustomMovieCell.swift
//  Netflix
//
//  Created by Alejo Castaño on 09/08/2020.
//  Copyright © 2020 Alejo Castaño. All rights reserved.
//

import Foundation
import UIKit

class CustomMovieCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    let imageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    
    let textLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = .black
        label.font = UIFont(name: "Arial", size: 18)
        return label
    }()
    
    func setupView(){
        addSubview(imageView)
        // addSubview(textLabel)
        
        imageView.snp.makeConstraints {
            $0.centerX.centerX.equalToSuperview()
        }
        
        /* textLabel.snp.makeConstraints {
            $0.centerX.centerX.equalToSuperview()
        } */
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
