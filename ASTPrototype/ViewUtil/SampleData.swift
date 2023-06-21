//
//  SampleData.swift
//  ASTPrototype
//
//  Created by Sam Valasek on 14/06/2023.
//

import SwiftUI

struct SampleData: Identifiable {
    let id = UUID()
    let date: Date
    let hours: Int
}

struct Date {
    static func from(year: Int, month: Int, day: Int) -> Date {
        let components = DateComponents(year: year, month: month, day: day)
        return Calendar.current.date(from: components)!
    }
}
