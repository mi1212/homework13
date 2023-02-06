//
//  ActuallsCollectionViewCell.swift
//  homework13
//
//  Created by Mikhail Chuparnov on 06.02.2023.
//

import UIKit

final class ActuallsCollectionViewCell: UICollectionViewCell {
    
//    private let profileImageView: UIImageView = {
//        let imageView = UIImageView()
//        imageView.backgroundColor = .green
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        return imageView
//    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupProperts()
        setupLayout()
    }
    
    @available (*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupProperts() {
        backgroundColor = .brown
    }
    
    private func setupLayout() {
//        addSubview(profileImageView)
//
//        NSLayoutConstraint.activate([
//            profileImageView.topAnchor.constraint(equalTo: topAnchor, constant: Inset.normal.rawValue),
//            profileImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: Inset.normal.rawValue),
//            profileImageView.widthAnchor.constraint(equalToConstant: 80),
//            profileImageView.heightAnchor.constraint(equalToConstant: 80),
//        ])
    }
    
}
