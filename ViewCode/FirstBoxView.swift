//
//  FirstBoxView.swift
//  ViewCode
//
//  Created by Suh on 24/11/22.
//

import Foundation

import UIKit

final class FirstBoxView: UIView {

    lazy var textLongFirst: UILabel = {
        let view = UILabel(frame: .zero)
        view.backgroundColor = .orange
        return view
    }()

    lazy var textLongSecond: UILabel = {
        let view = UILabel(frame: .zero)
        view.backgroundColor = .systemGreen
        return view
    }()

    lazy var textShortFirst: UILabel = {
        let view = UILabel(frame: .zero)
        view.backgroundColor = .pink
        return view
    }()

    lazy var textShortSecond: UILabel = {
        let view = UILabel(frame: .zero)
        view.backgroundColor = .cyan
        return view
    }()

    lazy var textLongContainer: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.axis = .vertical
        view.distribution = .fillEqually
        view.spacing = 8.0
        return view
    }()

    lazy var textShortContainer: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.axis = .horizontal
        view.distribution = .fillEqually
        view.spacing = 10.0
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

extension FirstBoxView: CodeView {
    func buidViewHierarchy() {
        textLongContainer.addArrangedSubview(textLongFirst)
        textLongContainer.addArrangedSubview(textLongSecond)
        addSubview(textLongContainer)
        textShortContainer.addArrangedSubview(textShortFirst)
        textShortContainer.addArrangedSubview(textShortSecond)
        addSubview(textShortContainer)

    }

    func setupConstraints() {
        textLongContainer.snp.makeConstraints { make in
            make.left.top.right.equalToSuperview()
            make.height.equalTo(50)
            make.width.equalToSuperview()

        }

        textShortContainer.snp.makeConstraints { make in
            make.left.bottom.right.equalToSuperview()
            make.height.equalTo(50)
            make.width.equalToSuperview()
            make.top.equalTo(textLongContainer.snp.bottom).offset(8)
        }

    }

    func setupAdditionConfiguration() {

    }


}
