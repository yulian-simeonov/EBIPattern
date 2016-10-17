//
//  GetAlbumRequest.swift
//  Album
//
//

import Foundation

/**
fix and complete this class

fixed and completed
*/
class GetAlbumRequest: GetAlbumRequestInterface {
    private var artistName: String?
   
    private var callback: ((GetAlbumResponseInterface)->Void)?
   
    init() {
        
    }
    
    func setArtistName(artistName: String?) {
        self.artistName = artistName
    }
    
    func getArtistName() -> String? {
        return self.artistName!
    }
    
    func setCallback(callback: ((GetAlbumResponseInterface)->Void)?) {
        self.callback = callback!
    }
    
    func getCallback()-> ((GetAlbumResponseInterface)->Void)? {
        return self.callback!
    }
}