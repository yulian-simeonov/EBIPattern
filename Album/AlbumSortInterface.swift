//
//  AlbumSortInterface.swift
//  Album
//

import Foundation
protocol AlbumSortInterface {
    func setCollection(collection:[AlbumInterface]?)
    func getSortedCollection() -> [AlbumInterface]?
}