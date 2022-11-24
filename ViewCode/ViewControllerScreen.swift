//
//  ViewControllerScreen.swift
//  ViewCode
//
//  Created by Suh on 22/11/22.
//

import UIKit

final class ViewControllerScreen: UIView {

    lazy var button: UIButton = {
        let view = UIButton(frame: .zero)
        view.backgroundColor = .red
        //view.setTitle("Fetch", for: .normal)
        view.setAttributedTitle(
            NSAttributedString(
                string: "Fetch",
                attributes: [
                    NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 30.0),
                    NSAttributedString.Key.foregroundColor: UIColor.white
                ]
            ),
            for: .normal
        )
        view.layer.cornerRadius = 8.0
        view.layer.masksToBounds = true
        return view
    }()

    private lazy var gridContainer: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.axis = .horizontal
        view.distribution = .fillEqually
        view.spacing = 8.0
        return view
    }()

    private lazy var firstContainer: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.axis = .horizontal
        view.distribution = .fill
        view.spacing = 8.0
        return view
    }()

    let leftBox = GridBoxView()
    let rightBox = GridBoxView()
    let firstBox = FirstBoxView()
    let imageBox = ImageBoxView()

    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

extension ViewControllerScreen: CodeView {
    func buidViewHierarchy() {
        addSubview(button)
        gridContainer.addArrangedSubview(leftBox)
        gridContainer.addArrangedSubview(rightBox)
        addSubview(gridContainer)
        firstContainer.addArrangedSubview(imageBox)
        firstContainer.addArrangedSubview(firstBox)
        addSubview(firstContainer)
    }

    func setupConstraints() {

        imageBox.snp.makeConstraints { make in
            make.width.equalTo(firstContainer.snp.height)
        }

        firstContainer.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().inset(20)
            make.height.equalTo(100)
            make.top.equalToSuperview().offset(50)

        }

        gridContainer.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().inset(20)
            make.height.equalTo(200)
            make.centerY.equalToSuperview()
        }

        button.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().inset(15) // o mesmo que .offset(-15)
            make.height.equalTo(70)
            make.bottom.equalTo(self).inset(15)
        }

    }

    func setupAdditionConfiguration() {
        backgroundColor = .darkGray
    }


}

