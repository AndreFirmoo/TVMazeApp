//
//  HomeViewController+UICollectionViewDataSource.swift
//  TVMaze
//
//  Created by ANDRE FIRMO on 01/05/21.
//

import UIKit

extension HomeViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return mockHeader.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mockData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeCollectionViewCell.indentifier, for: indexPath) as! HomeCollectionViewCell
        cell.backgroundColor = .systemTeal
        let model = mockData[indexPath.item]
        let viewModel = HomeShowViewModelCells(image: model.image, title: model.title)
        cell.prepareCells(with: viewModel)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if (kind == UICollectionView.elementKindSectionHeader) {
            let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderCollectionReusableView.indenfier, for: indexPath as IndexPath) as! HeaderCollectionReusableView
            
            let model = mockHeader[indexPath.section]
            let viewModel = HomeShowViewModelHeader(title: model.title)
            headerView.prepareHeader(with: viewModel)
            headerView.backgroundColor = .brown
            return headerView
            
        }
        return UICollectionReusableView()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
}
