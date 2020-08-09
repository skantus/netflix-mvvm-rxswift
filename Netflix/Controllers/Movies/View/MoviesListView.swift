//
//  MoviesListView.swift
//  Netflix
//
//  Created by Alejo Castaño on 09/08/2020.
//  Copyright © 2020 Alejo Castaño. All rights reserved.
//

import Foundation
import UIKit
import RxSwift

extension MoviesListController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    // MARK: Movies Collection View
    func configureCollectionView() {
        view.addSubview(collectionView)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(CustomMovieCell.self, forCellWithReuseIdentifier: cellId)
        setupCollectionConstraints()
    }
    
    func setupCollectionConstraints() {
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        collectionView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        collectionView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        collectionView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell  = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! CustomMovieCell
        
        cell.backgroundColor = .white
        cell.layer.cornerRadius = 5
        
        cell.imageView.imageFromServerUrl(urlString: "\(Constants.URL.urlImages+self.movies[indexPath.row].image)", placeHolderImage: UIImage(named: "placeholder-image")!)
        cell.textLabel.text = movies[indexPath.row].title
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 300)
    }
    
    // MARK: Logo
    func logo() -> UIView {
        let img = UIImageView()
        img.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        img.contentMode = .scaleAspectFit
        img.clipsToBounds = true
        img.image = UIImage(named: "logo")
        img.center.x = 70
        img.center.y = 70
        return img
    }
}
