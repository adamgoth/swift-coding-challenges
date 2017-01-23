//
//  main.swift
//  challenge30
//
//  Created by Adam Goth on 1/20/17.
//  Copyright © 2017 Adam Goth. All rights reserved.
//

import Foundation

func findNewJpegs(in directory: String) -> [String] {
    guard let contents = try? FileManager.default.contentsOfDirectory(atPath: directory) else { print("Unable to get contents of specified directory"); return [] }

    var results = [String]()

    let jpegs = contents.filter { $0.hasSuffix(".jpeg") || $0.hasSuffix(".jpg") }

    for jpeg in jpegs {
        let path = directory + jpeg
        guard let attributes = try? FileManager.default.attributesOfItem(atPath: path) else { print ("Unable to read file attributes"); return [] }
        if attributes[FileAttributeKey.creationDate] as! Date > Date(timeIntervalSinceNow: -172800) {
                results.append(jpeg)
            }
    }

    return results
    
}

print(findNewJpegs(in: "/Users/apg/Documents/ollie/"))
