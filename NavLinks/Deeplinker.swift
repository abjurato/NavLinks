//
//  Coordinator.swift
//  NavLinks
//
//  Created by Anatoly Rosencrantz on 02/07/2020.
//

import Foundation

let nextPages = [1, 2, 3, 4, 5, 6, 7, 8, 9]

class Deeplinker: ObservableObject {
    
    /// currentPage → currentPage+1 → ... → 9 → nil
    func pageAfter(currentPage: Int) -> Int? {
        if currentPage > 9 { return nil }
        return currentPage + 1
    }
}
