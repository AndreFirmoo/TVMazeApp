//
//  CodeView.swift
//  TVMaze
//
//  Created by ANDRE FIRMO on 27/04/21.
//

import Foundation

protocol CodeView {
    func setup()
    func setupComponents()
    func setupConstraints()
    func setupExtraConfiguration()
}
extension CodeView {
    func setup() {
        setupComponents()
        setupConstraints()
        setupExtraConfiguration()
    }
}
