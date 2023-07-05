//
//  PlistTests.swift
//  Aero SmackersTests
//
//  Created by Albert on 5.07.2023.
//

import XCTest
@testable import Aero_Smackers

class PlistTests: XCTestCase {
    
    private var manager: PlistManagerImpl!
    
    override func setUpWithError() throws {
        manager = PlistManagerImpl()
    }
    
    override func tearDownWithError() throws {
        manager = nil
    }
    
    func test_successful_decoding_shop_plist() {
        XCTAssertEqual(manager.convert(plist: "AeroSmackers").count, 4)
    }
    
    func test_insuccessful_decoding_plist() {
        XCTAssertEqual(manager.convert(plist: "LuchyCharms").count, 0)
    }
    
}

