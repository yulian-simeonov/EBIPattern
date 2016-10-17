//
//  GetAlbumRequestInterface.swift
//  Album
//
//
//  Created by Yulian Simeonov 24/04/2015

import Foundation

protocol GetAlbumRequestInterface {
    func setArtistName(artistName: String?)
    func getArtistName() -> String?
    func setCallback(callback: ((GetAlbumResponseInterface)->Void)?)
    func getCallback()-> ((GetAlbumResponseInterface)->Void)?
}