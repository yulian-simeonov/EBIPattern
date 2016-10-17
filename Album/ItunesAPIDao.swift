//
//  ItuneAPIDao.swift
//  Album
//
//

import Foundation

class ItunesAPIDao: AlbumDaoInterface {
    private var httpConnection: HttpConnectionInterface
    
    init(httpConnection: HttpConnectionInterface) {
        self.httpConnection = httpConnection
    }
    
    func getAlbum(
        searchTitle: String,
        callback: ((nsData:NSData?, response: NSURLResponse?, error: NSError?) -> Void)
    ) {
    
        /**
        Complete this section
        */
        self.httpConnection.submit(searchTitle, callback: {(nsData, response, error) in
            callback(nsData: nsData, response: response, error: error)
        })
    }
}