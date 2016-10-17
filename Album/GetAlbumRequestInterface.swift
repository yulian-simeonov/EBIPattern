//
//  GetAlbumRequestInterface.swift
//  Album
//
//

import Foundation

protocol GetAlbumRequestInterface {
    func setArtistName(artistName: String?)
    func getArtistName() -> String?
    func setCallback(callback: ((GetAlbumResponseInterface)->Void)?)
    func getCallback()-> ((GetAlbumResponseInterface)->Void)?
}