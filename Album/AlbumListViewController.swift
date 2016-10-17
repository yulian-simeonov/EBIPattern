//
//  ViewController.swift
//  Album
//
//

import UIKit

/**
complete this controller

completed
*/
class AlbumListViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var albumScrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var viewAlbumDetailButton: UIButton!
    @IBOutlet weak var spindle: UIActivityIndicatorView!
    @IBOutlet weak var albumTitle: UILabel!
    
    private var itunesApiDao: AlbumDaoInterface?
    private var albums = [AlbumInterface]()
    private var collectionOfUIImages =  [UIImageView?]()
    private var collectionOfImages =  [UIImage?]()
    private var albumSort: AlbumSortInterface?
    private var getAlbumResponse = GetAlbumResponse()
    
    var pageImages: [NSString] = []
    var pageViews: [UIImageView?] = []
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let httpConnection = HttpConnection(url: "https://itunes.apple.com/search?term=%@&USA&media=music&entity=album&limit=10&sort=recent")
        self.itunesApiDao = ItunesAPIDao(httpConnection: httpConnection)
        self.albumSort = AlbumSort()
        
        self.spindle .startAnimating()
        
        let getAlbum = GetAlbumInteractor(albumDao: self.itunesApiDao!, sorter: self.albumSort!)
        
        let getAlbumRequest = GetAlbumRequest()
        getAlbumRequest.setArtistName("jack+johnson")
        
        let getAlbumResponse = GetAlbumResponse()
        
        getAlbum.getAlbum(getAlbumRequest, getAlbumResponse: getAlbumResponse)
        
        getAlbumRequest.setCallback({(albumResponse) in
            print(albumResponse.getAlbums())
            self.albums = albumResponse.getAlbums()!
            
            let priority = DISPATCH_QUEUE_PRIORITY_DEFAULT
            dispatch_async(dispatch_get_global_queue(priority, 0)) {
                // do some task
                dispatch_async(dispatch_get_main_queue()) {
                    // update some UI
                    self.spindle.stopAnimating()
                    self.setupScrollView()
                }
            }
        })
    }
    
    func setupScrollView() {
        // Set up the content size of the scroll view
        let pagesScrollViewSize = albumScrollView.frame.size
        self.albumScrollView.contentSize = CGSizeMake(pagesScrollViewSize.width * CGFloat(albums.count), pagesScrollViewSize.height)
        
        var i:Int

        // Load the initial set of pages that are on screen
        for i=0; i<self.albums.count; i++ {
            let album = self.albums[i]
            
            let imageView = UIImageView(frame: CGRectMake(CGFloat(i)*pagesScrollViewSize.width, 0, pagesScrollViewSize.width, pagesScrollViewSize.height))
            imageView.sd_setImageWithURL(NSURL(string: album.getImage()))
            
            self.albumScrollView .addSubview(imageView)

            pageViews.append(imageView)
            pageImages.append(album.getImage())
        }
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView!) {
        // Load the pages that are now on screen
    }
    
    func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        let pageWidth = albumScrollView.frame.size.width
        let page = Int(floor((albumScrollView.contentOffset.x * 2.0 + pageWidth) / (pageWidth * 2.0)))
        pageControl.currentPage = page
    }
    
    override func viewDidAppear(animated: Bool) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

