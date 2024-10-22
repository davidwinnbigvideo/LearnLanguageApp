//
//  String+Url.swift
//  LearnLanguage
//
//  Created by David Winn on 10/22/24.
//

import Foundation

extension String {
    var url: URL {
        if let urlValue = URL(string: self) {
            return urlValue
        }

        fatalError("Unable to create URL from \(self)")
    }
}
