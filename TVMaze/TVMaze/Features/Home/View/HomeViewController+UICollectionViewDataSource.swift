//
//  HomeViewController+UICollectionViewDataSource.swift
//  TVMaze
//
//  Created by ANDRE FIRMO on 01/05/21.
//

import UIKit

extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeCollectionViewCell.indentifier, for: indexPath) as! HomeCollectionViewCell
        cell.backgroundColor = .systemTeal
        //cell.titleLabel.text = "Texto \([indexPath.item].count)"
        //cell.desciptionLabel.text = "Descricao \([indexPath.item].count)"
        //cell.likeButton.titleLabel?.text = "like"
        cell.imageCell.image = UIImage(systemName: "house")
        return cell
    }
    
    
}
