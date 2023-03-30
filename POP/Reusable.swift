//
//  Reusable.swift
//  POP
//
//  Created by Abner Castro on 29/03/23.
//

import Foundation

protocol Reusable {
    
    static var reusableIdentifier: String { get }
    
}


extension Reusable {
    
    static var reusableIdentifier: String { String(describing: self)  }
    
}
