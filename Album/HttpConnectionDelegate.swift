//
//  HttpConnectionDelegate.swift
//  Album
//
//  Created by jaylen soeur on 2/04/2015.
//  Copyright (c) 2015 FitPotato Ventures Pty Ltd. All rights reserved.
//

import Foundation
protocol HttpConnectionDelegate {
    func processRequest(data:NSData?, response:NSURLResponse?, error: NSError?) -> Void
}