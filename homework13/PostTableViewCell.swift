//
//  TableViewCell.swift
//  homework13
//
//  Created by Mikhail Chuparnov on 30.01.2023.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    private var indexPath = IndexPath()
    
    private let headerStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.backgroundColor = .clear
        return stack
    }()
    
    private let avatarImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .clear
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 20
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "avatar")
        return imageView
    }()
    
    private let nickNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .systemGray
//        label.backgroundColor = .systemGreen
        label.text = "officiallymcconaughey"
        return label
    }()
    
    private let dotsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 20)
//        label.backgroundColor = .systemGreen
        label.textColor = .systemGray
        label.text = "..."
        return label
    }()
    
    private let picImageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.backgroundColor = .clear
        
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupLayout()
        backgroundColor = .black
        selectionStyle = .none
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLayout() {
        contentView.addSubview(avatarImageView)
        contentView.addSubview(nickNameLabel)
        contentView.addSubview(dotsLabel)
        contentView.addSubview(picImageView)
        
        let inset: CGFloat = 8
        
        NSLayoutConstraint.activate([
            avatarImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: inset),
            avatarImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: inset),
            avatarImageView.heightAnchor.constraint(equalToConstant: 40),
            avatarImageView.widthAnchor.constraint(equalToConstant: 40)
        ])
        
        NSLayoutConstraint.activate([
            nickNameLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: inset),
            nickNameLabel.centerYAnchor.constraint(equalTo: avatarImageView.centerYAnchor),
            nickNameLabel.trailingAnchor.constraint(equalTo: dotsLabel.leadingAnchor, constant: -inset)
        ])
        
        NSLayoutConstraint.activate([
            dotsLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -inset),
            dotsLabel.centerYAnchor.constraint(equalTo: avatarImageView.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            picImageView.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: inset),
            picImageView.widthAnchor.constraint(equalTo: contentView.widthAnchor),
            picImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
            
        ])
    }
    
    func setupData(indexPath: IndexPath) {
        self.indexPath = indexPath
        picImageView.image = UIImage(named: "postImage\(indexPath.row)")
    }

}
