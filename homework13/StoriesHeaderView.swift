//
//  StoriesHeaderView.swift
//  homework13
//
//  Created by Mikhail Chuparnov on 30.01.2023.
//

import UIKit

class StoriesHeaderView: UIView, UICollectionViewDelegate {

    private lazy var storiesCollectionView: UICollectionView = {
        let flow = UICollectionViewFlowLayout()
        flow.scrollDirection = .horizontal
        let collection = UICollectionView(frame: .zero, collectionViewLayout: flow)
        collection.delegate = self
        collection.dataSource = self
        collection.backgroundColor = .clear
        collection.register(UICollectionViewCell.self, forCellWithReuseIdentifier: UICollectionViewCell.identifire)
        collection.translatesAutoresizingMaskIntoConstraints = false
        return collection
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
        setupProperts()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupProperts() {
        backgroundColor = .black
    }
    
    private func setupLayout() {
        addSubview(storiesCollectionView)
        
        NSLayoutConstraint.activate([
            storiesCollectionView.topAnchor.constraint(equalTo: topAnchor),
            storiesCollectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            storiesCollectionView.trailingAnchor.constraint(equalTo: trailingAnchor),
            storiesCollectionView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
}

extension StoriesHeaderView: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = CGFloat(collectionView.frame.size.width/4.8)
        
        return CGSize(
            width: width,
            height: width
        )
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        10
    }
    
}

extension StoriesHeaderView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: UICollectionViewCell.identifire, for: indexPath)
        cell.backgroundColor = .systemTeal
        cell.layer.cornerRadius = (collectionView.frame.size.width/9.6)
        return cell
    }
}

