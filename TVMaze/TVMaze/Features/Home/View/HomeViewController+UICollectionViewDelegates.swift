//
//  HomeViewController+UICollectionViewDelegates.swift
//  TVMaze
//
//  Created by ANDRE FIRMO on 01/05/21.
//

import UIKit

extension HomeViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let largura = collectionView.bounds.width / 2
        return CGSize(width: largura-15, height: 160)
    }
}
