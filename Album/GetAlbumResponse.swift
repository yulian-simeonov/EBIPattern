//
//  GetAlbumResponse.swift
//  Album
//
//
//  Created by Yulian Simeonov 24/04/2015

import Foundation

/**
fix and complete this class

fixed and completed
*/
class GetAlbumResponse: GetAlbumResponseInterface {
    private var albums:[AlbumInterface]?
    
    init() {
        
    }
    
    func setAlbums(albumCollection:[AlbumInterface]?) {
        self.albums = albumCollection
    }
    
    func getAlbums() -> [AlbumInterface]? {
        return self.albums?
    }
}