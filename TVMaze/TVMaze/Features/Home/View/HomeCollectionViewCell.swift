//
//  HomeCollectionViewCell.swift
//  TVMaze
//
//  Created by ANDRE FIRMO on 28/04/21.
//

import UIKit

final class HomeCollectionViewCell: UICollectionViewCell, CodeView {
    
    static let indentifier = "ListShows"
    
    @ViewCodeComponent
    var imageCell: UIImageView = {
        var imageCell = UIImageView(frame: .zero)
        imageCell.layer.cornerRadius = 10
        return imageCell
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func prepareCells(){
        // TODO: Implementar a regra de exibição da celula
    }
    
    func setupComponents() {
        contentView.addSubview(imageCell)
    }
    
    func setupConstraints() {
        imageCellConstraint()
    }
    
    func setupExtraConfiguration() {
        
    }
    
    private func imageCellConstraint() {
        imageCell.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        imageCell.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5).isActive = true
        imageCell.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5).isActive = true
        imageCell.heightAnchor.constraint(equalToConstant: contentView.bounds.height-10).isActive = true
        
        
    }
    
}
