//
//  HttpConnectionInterface.swift
//  Album
//
//  Created by Yulian Simeonov 24/04/2015

import Foundation

protocol HttpConnectionInterface {
    func submit(param: String?, callback: ( (nsData:NSData?, response: NSURLResponse?, error: NSError?) -> Void) )
}