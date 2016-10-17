//
//  GetAlbumResponse.swift
//  Album
//
//

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