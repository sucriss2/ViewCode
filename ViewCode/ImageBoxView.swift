//
//  ImageBox.swift
//  ViewCode
//
//  Created by Suh on 24/11/22.
//

import Foundation

import UIKit

final class ImageBoxView: UIView {

    lazy var imageView: UIImageView = {
        let view = UIImageView(frame: .zero)
        view.backgroundColor = .yellow
        return view
    }()


    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

extension ImageBoxView: CodeView {
    func buidViewHierarchy() {
        addSubview(imageView)
    }

    func setupConstraints() {
        imageView.snp.makeConstraints { make in
            make.left.top.right.equalToSuperview()
            make.bottom.equalToSuperview()
        }

    }

    func setupAdditionConfiguration() {

    }


}
