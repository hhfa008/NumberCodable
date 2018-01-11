//
//  Number.swift
//  hhfa
//
//  Created by hhfa on 11/01/2018.
//  Copyright © 2018 hhfa. All rights reserved.
//

import UIKit

struct Number:Decodable {
    var intValue:Int
    var stringValue:String
    init(from decoder: Decoder) throws {
        let singleValueContainer = try decoder.singleValueContainer()
        
        if let stringValue = try? singleValueContainer.decode(String.self)
        {
            if let intValue = Int(stringValue)
            {
                self.intValue = intValue
                self.stringValue = String(intValue);
            } else
            {
                self.intValue = 0
                self.stringValue = String(0);
            }
            
        } else if let stringValue = try? singleValueContainer.decode(Int.self)
        {
            self.intValue = stringValue
            self.stringValue = String(stringValue);
        } else
        {
            self.intValue = 0
            self.stringValue = String(0);
        }
    }
}
