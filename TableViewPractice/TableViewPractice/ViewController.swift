//
//  ViewController.swift
//  TableViewPractice
//
//  Created by 요한 on 2020/05/26.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    
    
    override var description: String { "TableView - CustomCell" }
    let tableView = UITableView()
    var data = Array(1...50)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
    }
    
    func setupTableView() {
        tableView.frame = view.frame
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "CellId")
        view.addSubview(tableView)
        
        let refreshControl = UIRefreshControl()
        refreshControl.attributedTitle = NSAttributedString(string: "Refreshing...")
        refreshControl.tintColor = .blue
        refreshControl.addTarget(self, action: #selector(reloadData), for: .valueChanged)
        tableView.refreshControl = refreshControl
    }
    
    @objc func reloadData() {
        //        data.reverse()
        tableView.refreshControl?.endRefreshing()
        tableView.reloadData()
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellId", for: indexPath)
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }
    
    //    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
    //        <#code#>
    //    }
}


extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
      guard let customCell = cell as? CustomTableViewCell else { return }
      customCell.customButton.frame = CGRect(
        x: cell.frame.width - 120, y: 15,
        width: 100, height: cell.frame.height - 30
      )
    }
}
