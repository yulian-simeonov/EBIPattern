//
//  GetAlbumResponseInterface.swift
//  Album
//
//

import Foundation

protocol GetAlbumResponseInterface {
    func setAlbums(albumCollection:[AlbumInterface]?)
    func getAlbums() -> [AlbumInterface]?
}