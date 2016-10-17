//
//  Sort.swift
//  Album
//
//

import Foundation

class AlbumSort: SortInterface, AlbumSortInterface {
    private var collection: [AlbumInterface]?
    
    init() {
  
    }
    
    func sort() {
    
    }
    
    func setCollection(collection:[AlbumInterface]?) {
        self.collection = collection
    }
    
    func getSortedCollection() -> [AlbumInterface]? {
        self.sort()
        return self.collection?
    }
}