//
//  main.swift
//  challenge31
//
//  Created by Adam Goth on 1/24/17.
//  Copyright © 2017 Adam Goth. All rights reserved.
//

import Foundation

func copyDirectory(_ source: String, to destination: String) -> Bool {
    let fm = FileManager.default
    var isDirectory: ObjCBool = false
    
    guard fm.fileExists(atPath: source, isDirectory: &isDirectory) || isDirectory.boolValue == false else { return false }
    
    let sourceURL = URL(fileURLWithPath: source)
    let destinationURL = URL(fileURLWithPath: destination)
    
    do {
        try fm.copyItem(at: sourceURL, to: destinationURL)
    } catch {
        print(" Copy of directory failed: \(error.localizedDescription)")
        return false
    }
    
    return true
}

print(copyDirectory("/Users/apg/Documents/ollie", to: "/Users/apg/Documents/new"))
