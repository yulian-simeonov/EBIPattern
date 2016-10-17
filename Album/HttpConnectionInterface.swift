//
//  HttpConnectionInterface.swift
//  Album
//

import Foundation

protocol HttpConnectionInterface {
    func submit(param: String?, callback: ( (nsData:NSData?, response: NSURLResponse?, error: NSError?) -> Void) )
}