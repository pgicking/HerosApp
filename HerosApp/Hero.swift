//
//  Hero.swift
//  HerosApp
//
//  Created by Peter Gicking on 5/21/16.
//  Copyright © 2016 Peter Gicking. All rights reserved.
//

import UIKit

class Hero {
    //MARK: Properties
    
    var name: String
    var portrait: UIImage?
    
    //MARK: Initalization
    
    init?(name: String, portrait:UIImage? ){
        self.name = name
        
        self.portrait = portrait
        
        if name.isEmpty {
            return nil
        }
    }
    
    
}
