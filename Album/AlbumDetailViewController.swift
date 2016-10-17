//
//  AlbumDetailViewController.swift
//  Album
//
//

import UIKit

class AlbumDetailViewController: UIViewController {
    private var album: AlbumInterface?
   
    @IBOutlet weak var spindle: UIActivityIndicatorView!
    @IBOutlet weak var albumImage: UIImageView!
    @IBOutlet weak var albumPrice: UILabel!
    @IBOutlet weak var albumTitle: UILabel!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    func setAlbum(album: AlbumInterface) {
        self.album = album
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}