//
//  BundleLoad.swift
//  IkeaPayLoan
//
//  Created by Daniel Mandea on 07/10/22.
//  Copyright © 2020 Ikano Bank AB (publ). All rights reserved.
//

import Foundation

extension Bundle {
    public func loadData(from file: String, withExtension `extension`: String) throws -> Data {
        guard let fileURL = self.url(forResource: file, withExtension: `extension`)
        else { throw URLError(.badURL, userInfo: [NSURLErrorFailingURLStringErrorKey: "\(file).\(`extension`)"]) }
        return try Data(contentsOf: fileURL)
    }
}
