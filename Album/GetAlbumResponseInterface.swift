//
//  GetAlbumResponseInterface.swift
//  Album
//
//
//  Created by Yulian Simeonov 24/04/2015

import Foundation

protocol GetAlbumResponseInterface {
    func setAlbums(albumCollection:[AlbumInterface]?)
    func getAlbums() -> [AlbumInterface]?
}