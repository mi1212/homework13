//
//  HomeViewController.swift
//  homework13
//
//  Created by Mikhail Chuparnov on 30.01.2023.
//

import UIKit

final class HomeViewController: UIViewController {

    private let storiesTableView: UITableView = {
        let table = UITableView()
        table.backgroundColor = .black
        table.register(PostTableViewCell.self, forCellReuseIdentifier: PostTableViewCell.identifire)
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupProperts()
        setupLayout()
        setupNavigationBar()
    }
    
    private func setupProperts() {
        storiesTableView.delegate = self
        storiesTableView.dataSource = self
        view.backgroundColor = .black
    }
    
    private func setupLayout() {
        view.addSubview(storiesTableView)
        
        NSLayoutConstraint.activate([
            storiesTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            storiesTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            storiesTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            storiesTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    private func setupNavigationBar() {
        navigationController?.navigationBar.tintColor = .systemTeal
        
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .black
        self.navigationController?.navigationBar.compactAppearance = appearance
        self.navigationController?.navigationBar.standardAppearance = appearance
        self.navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        
        let messsageButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus.message"), style: .done, target: self, action: nil)
        
        navigationItem.rightBarButtonItem = messsageButtonItem
    }

}
 
extension HomeViewController: UITableViewDelegate {
    
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        StoriesHeaderView()
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        view.frame.height/8
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PostTableViewCell.identifire, for: indexPath) as! PostTableViewCell
        cell.setupData(indexPath: indexPath)
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        view.frame.height/2
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }
}
