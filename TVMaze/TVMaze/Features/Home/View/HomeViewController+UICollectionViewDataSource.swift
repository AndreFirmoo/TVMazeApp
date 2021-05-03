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
        cell.imageCell.image = UIImage(systemName: "house")
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        // Create header
        if (kind == UICollectionView.elementKindSectionHeader) {
            // Create Header
            let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderCollectionReusableView.indenfier, for: indexPath as IndexPath) as! HeaderCollectionReusableView
            headerView.backgroundColor = .brown
            return headerView
        }
        return UICollectionReusableView()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
}
