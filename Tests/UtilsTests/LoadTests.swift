//
//  LoadTests.swift
//
//
//  Created by Daniel Mandea on 05.10.2022.
//

import Foundation
import XCTest
@testable import Utils

class LoadTests: XCTestCase {
    func testJSONDecode() throws {
        _ = try Bundle.module.loadData(from: "api_configuration_test", withExtension: "json")
    }
}
