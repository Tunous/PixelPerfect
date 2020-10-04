//
//  Book.swift
//  Goodreads
//
//  Created by Łukasz Rutkowski on 29/06/2020.
//

import Foundation

struct Book: Identifiable {

    var id: UUID
    var title: String
    var author: String
    var pages: Int
    var currentPage: Int
}

extension Book {

    static let becoming = Book(id: UUID(), title: "Becoming", author: "Michelle Obama", pages: 448, currentPage: 128)
}


extension Book {

    var progressPercentage: Double {
        Double(currentPage) / Double(pages)
    }

    var progressPercentageString: String {
        "\(Int(progressPercentage * 100))%"
    }
}
