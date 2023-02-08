//
//  ActuallCollectionViewCell.swift
//  homework13
//
//  Created by Mikhail Chuparnov on 08.02.2023.
//

import UIKit

final class ActuallCollectionViewCell: UICollectionViewCell {
        
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "actuall title"
        label.textColor = .white
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    private let picImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .green
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

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
//        backgroundColor = .gray
    }
    
    private func setupLayout() {
        addSubview(titleLabel)
        addSubview(picImageView)
        
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: Inset.small.rawValue),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -Inset.small.rawValue),
            titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            picImageView.topAnchor.constraint(equalTo: topAnchor, constant: Inset.small.rawValue),
            picImageView.bottomAnchor.constraint(equalTo: titleLabel.topAnchor, constant: -Inset.small.rawValue),
            picImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            picImageView.widthAnchor.constraint(equalTo: picImageView.heightAnchor)
        ])
    }
    
    func setupCornerRadiusOfImage() {
        picImageView.layer.cornerRadius = picImageView.frame.height/2
        print(picImageView.frame.height/2)
    }
}
