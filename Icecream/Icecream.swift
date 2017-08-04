//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream: [String: String] = ["Joe": "Peanut Butter and Chocolate",
                                                       "Tim": "Natural Vanilla",
                                                       "Sophie": "Mexican Chocolate",
                                                       "Deniz": "Natural Vanilla",
                                                       "Tom": "Mexican Chocolate",
                                                       "Jim": "Natural Vanilla",
                                                       "Susan": "Cookies 'N' Cream"
                                                      ]

    // 2.
    func names(forFlavor flavor: String) -> [String] {
        var peopleWhoLike: [String] = []
        for (name, favorite) in favoriteFlavorsOfIceCream {
            if favorite == flavor {
                peopleWhoLike.append(name)
            }
        }
        return peopleWhoLike
    }
    
    // 3.
    func count(forFlavor flavor: String) -> Int {
        var numberOfLosers = 0
        for (_, favorite) in favoriteFlavorsOfIceCream {
            if favorite == flavor {
                numberOfLosers += 1
            }
        }
        return numberOfLosers
    }
    
    // 4.
    func flavor(forPerson person: String) -> String? {
        var favoriteFlavor: String? = nil
        for (name, favorite) in favoriteFlavorsOfIceCream {
            if name == person {
                favoriteFlavor = favorite
            }
        }
        return favoriteFlavor
    }

    // 5.
    func replace(flavor flavorToChange: String, forPerson person: String) -> Bool {
        var flavorIsChanged = false
        for (name, favorite) in favoriteFlavorsOfIceCream {
            if (name == person) && (favorite != flavorToChange) {
                    favoriteFlavorsOfIceCream[name] = flavorToChange
                    flavorIsChanged = true
            }
        }
        return flavorIsChanged
    }
    
    func remove(person toBeRemoved: String) -> Bool {
        var isRemoved = false
        for (name, _) in favoriteFlavorsOfIceCream {
            if name == toBeRemoved {
                favoriteFlavorsOfIceCream[name] = nil
                isRemoved = true
            }
        }
        return isRemoved
    }
    
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.count
    }
    
    func addPerson(person toAdd: String, withFlavor flavor: String) -> Bool {
        var isAdded = false
        let attendees = Array(favoriteFlavorsOfIceCream.keys)
        if attendees.index(of: toAdd) == nil {
            favoriteFlavorsOfIceCream[toAdd] = flavor
            isAdded = true
        }
        return isAdded
    }
    
    func attendeeList() -> String {
        var list = ""
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        for name in allNames {
            // flavor = favoriteFlavorsOfIceCream[name]
            if let faveFlave = favoriteFlavorsOfIceCream[name] {
                list = list + name + " likes " + faveFlave + "\n"
            }
        }
        return list
    }
    
}
