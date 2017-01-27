//
//  main.swift
//  challenge33
//
//  Created by Adam Goth on 1/26/17.
//  Copyright © 2017 Adam Goth. All rights reserved.
//

/*
 Challenge 33: Find duplicate filenames
 Difficulty: Tricky
 Write a function that accepts the name of a directory to scan, and returns an array of filenames that appear more than once in that directory or any of its subdirectories. Your function should scan all subdirectories, including subdirectories of subdirectories.
 Sample input and output
 • If directory/subdir/a.txt exists and directory/sub/sub/sub/sub/subdir/a.txt exists, “a.txt” should be in the array you return.
 • Ignore directories that have the same name; you care only about files.
 • If there are no files with duplicate names, return an empty array.
*/


import Foundation

func findDuplicateFilenames(in directory: String) -> [String] {
    let fm = FileManager.default
    let directoryURL = URL(fileURLWithPath: directory)
    
    guard let files = fm.enumerator(at: directoryURL, includingPropertiesForKeys: nil) else { return [] }
    var duplicates = Set<String>()
    var seen = Set<String>()
    
    for case let file as URL in files {
        guard file.hasDirectoryPath == false else { continue }
        
        let filename = file.lastPathComponent
        
        if seen.contains(filename) {
            duplicates.insert(filename)
        }
        
        seen.insert(filename)
    }
    
    return Array(duplicates)
}

print(findDuplicateFilenames(in: "/Users/apg/Desktop/directory/"))
