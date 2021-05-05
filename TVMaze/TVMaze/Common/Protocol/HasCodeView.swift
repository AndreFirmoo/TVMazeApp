//
//  HasCodeView.swift
//  TVMaze
//
//  Created by ANDRE FIRMO on 27/04/21.
//

import UIKit

protocol HasCodeView {
    associatedtype CustomView: UIView
}

extension HasCodeView where Self: UIViewController {
    var customView: CustomView? {
        return view as? CustomView
    }
}
