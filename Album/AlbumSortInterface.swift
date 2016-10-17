//
//  AlbumSortInterface.swift
//  Album
//
//  Created by Yulian Simeonov 24/04/2015

import Foundation
protocol AlbumSortInterface {
    func setCollection(collection:[AlbumInterface]?)
    func getSortedCollection() -> [AlbumInterface]?
}