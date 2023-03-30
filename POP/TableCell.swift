//
//  TableCell.swift
//  POP
//
//  Created by Abner Castro on 29/03/23.
//

import UIKit

class TableCell: UITableViewCell, Reusable {
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
    }
    
    
    
    func configure(_ model: CellModelable) {
        textLabel?.text = model.title
        detailTextLabel?.text = model.subtitle
    }
}
