//: Playground - noun: a place where people can play

/*
 Challenge 39: Sort a string array by length
 Difficulty: Easy
 Extend collections with a function that returns an array of strings sorted by their lengths,
 longest first.
 Sample input and output
 • The code ["a", "abc", "ab"].challenge39() should return ["abc", "ab", "a"].
 • The code ["paul", "taylor", "adele"].challenge39() should return ["taylor", "adele", "paul"].
 • The code [String]().challenge39() should return [].
*/

import UIKit

extension Collection where Iterator.Element == String {
    func challenge39() -> [String] {
        return self.sorted(by: { $0.characters.count > $1.characters.count })
    }
}

["a", "abc", "ab"].challenge39()
["paul", "taylor", "adele"].challenge39()
[String]().challenge39()
["Alaska",
 "Alabama",
 "Arkansas",
 "American Samoa",
 "Arizona",
 "California",
 "Colorado",
 "Connecticut",
 "District of Columbia",
 "Delaware",
 "Florida",
 "Georgia",
 "Guam",
 "Hawaii",
 "Iowa",
 "Idaho",
 "Illinois",
 "Indiana",
 "Kansas",
 "Kentucky",
 "Louisiana",
 "Massachusetts",
 "Maryland",
 "Maine",
 "Michigan",
 "Minnesota",
 "Missouri",
 "Mississippi",
 "Montana",
 "North Carolina",
 " North Dakota",
 "Nebraska",
 "New Hampshire",
 "New Jersey",
 "New Mexico",
 "Nevada",
 "New York",
 "Ohio",
 "Oklahoma",
 "Oregon",
 "Pennsylvania",
 "Puerto Rico",
 "Rhode Island",
 "South Carolina",
 "South Dakota",
 "Tennessee",
 "Texas",
 "Utah",
 "Virginia",
 "Virgin Islands",
 "Vermont",
 "Washington",
 "Wisconsin",
 "West Virginia",
 "Wyoming"].challenge39()