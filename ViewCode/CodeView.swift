//
//  CodeView.swift
//  ViewCode
//
//  Created by Suh on 22/11/22.
//

import Foundation
import SnapKit

protocol CodeView {
    func buidViewHierarchy()
    func setupConstraints()
    func setupAdditionConfiguration()
    func setupView()
}

extension CodeView {
    func setupView() {
        buidViewHierarchy()
        setupConstraints()
        setupAdditionConfiguration()
    }
}
