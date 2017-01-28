//
//  main.swift
//  challenge34
//
//  Created by Adam Goth on 1/26/17.
//  Copyright © 2017 Adam Goth. All rights reserved.
//

/*
 Challenge 34: Find executables
 Difficulty: Tricky
 Write a function that accepts the name of a directory to scan, and returns an array containing
 the name of any executable files in there.
 Sample input and output
 • If directory/a exists and is executable, “a” should be in the array you return.
 • If directory/subdirectory/a exists and is executable, it should not be in the array you
 return; only return files in the directory itself, not its subdirectories.
 • If there are no executable files, return an empty array.
*/

import Foundation

func findExecutables(in directory: String) -> [String] {
    let fm = FileManager.default
    let directoryURL = URL(fileURLWithPath: directory)
    guard let contents = try? fm.contentsOfDirectory(at: directoryURL, includingPropertiesForKeys: nil) else { return [] }
    var results = [String]()
    
    for item in contents {
        print(item)
        if fm.isExecutableFile(atPath: item.lastPathComponent) || item.hasDirectoryPath == false {
            results.append(item.lastPathComponent)
        }
    }
    
    return results
}

print(findExecutables(in: "/Users/apg/Desktop/directory/"))

