//
//  PlisManager.swift
//  Aero Smackers
//
//  Created by Albert on 5.07.2023.
//

import Foundation

protocol PlistManager {
    func convert(plist fileName: String) -> [String: String]
}

class PlistManagerImpl: PlistManager {
    
    func convert(plist fileName: String) -> [String: String] {
        guard let url = Bundle.main.url(forResource: fileName, withExtension: "plist"),
              let data = try? Data(contentsOf: url),
              let items = try? PropertyListDecoder().decode([String: String].self, from: data) else {
            return [:]
        }
        return items
    }
}

