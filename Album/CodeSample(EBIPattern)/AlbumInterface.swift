//
//  AlbumInterface.swift
//  Album
//
//

import Foundation

protocol AlbumInterface {
    func setTitle(title: String?)
    func setImage(img: String? )
    func setPrice(price: Double? )
    func getTitle() -> String?
    func getImage() -> String
    func getPrice() -> Double
}