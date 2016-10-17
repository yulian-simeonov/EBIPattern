//
//  AlbumDaoInterface.swift
//  Album
//
//

import Foundation

protocol AlbumDaoInterface {
    func getAlbum(
        searchTitle: String,
        callback: ( (nsData:NSData?, response: NSURLResponse?, error: NSError?) -> Void)
    )
}