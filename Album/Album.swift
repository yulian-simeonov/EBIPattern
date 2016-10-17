//
//  Album.swift
//  Album
//
//

import Foundation

class Album: AlbumInterface {

    private var title: String?
    private var image: String?
    private var price: Double?
    
    init() {
        
    }
    
    func setTitle(title: String?) {
        self.title = title
    }
    
    func setImage(img: String? ) {
        self.image = img
    }
    
    func setPrice(price: Double? ) {
        self.price = price
    }
    
    func getTitle() -> String? {
        return self.title
    }
    
    func getImage() -> String {
        return self.image!
    }
    
    func getPrice() -> Double {
        return self.price!
    }
}