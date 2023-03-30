//
//  POPTests.swift
//  POPTests
//
//  Created by Abner Castro on 29/03/23.
//

import XCTest
@testable import POP

final class POPTests: XCTestCase {

    var sut: ViewController!
    
    override func setUp() {
        super.setUp()
        
        sut = ViewController()
        sut.models = models()
        
    }
    
    func testTableView_numberOfRows_isGreaterThanZero() {
        sut.loadViewIfNeeded()
        
        XCTAssertTrue(sut.tableView.dataSource!.tableView(sut.tableView, numberOfRowsInSection: sut.models?.count ?? 0) > 0)
        
        
    }
    
    
    
    override func tearDown() {
        super.tearDown()
        sut = nil
    }
    
    
    private func models() -> [CellModelable] {
        [MockCellModelable(title: "Prueba", subtitle: "Prueba1")]
    }
    
    
    private struct MockCellModelable: CellModelable  {
        var title: String
        var subtitle: String
    }

}
