//
//  AlbumDaoInterface.swift
//  Album
//
//
//  Created by Yulian Simeonov 24/04/2015

import Foundation

protocol AlbumDaoInterface {
    func getAlbum(
        searchTitle: String,
        callback: ( (nsData:NSData?, response: NSURLResponse?, error: NSError?) -> Void)
    )
}