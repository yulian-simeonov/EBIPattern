//
//  AlbumInterface.swift
//  Album
//
//
//  Created by Yulian Simeonov 24/04/2015

import Foundation

protocol AlbumInterface {
    func setTitle(title: String?)
    func setImage(img: String? )
    func setPrice(price: Double? )
    func getTitle() -> String?
    func getImage() -> String
    func getPrice() -> Double
}