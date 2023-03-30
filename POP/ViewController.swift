//
//  ViewController.swift
//  POP
//
//  Created by Abner Castro on 29/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var models: [CellModelable]? = ModelProvider.models
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "POP"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Siguiente", style: .plain, target: self, action: #selector(nextVC))
        
        tableView.register(TableCell.self, forCellReuseIdentifier: TableCell.reusableIdentifier)
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    @objc private func nextVC() {
        
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        models?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let model = models?[indexPath.row], let cell = tableView.dequeueReusableCell(withIdentifier: TableCell.reusableIdentifier) as? TableCell else { return UITableViewCell() }
        
        
        cell.configure(model)
        
        return cell
    }
    
    
    
    
}

