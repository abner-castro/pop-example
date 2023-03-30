//
//  TableViewModel.swift
//  POP
//
//  Created by Abner Castro on 29/03/23.
//

import Foundation

public class TableViewModel: CellModelable {
    
    let title: String
    let subtitle: String
    
    init(title: String, subtitle: String) {
        self.title = title
        self.subtitle = subtitle
    }
    
}

struct CellViewModel: CellModelable {
    var title: String
    var subtitle: String
}
