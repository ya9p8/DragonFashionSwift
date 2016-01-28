//
//  Dragon.swift
//  DragonFashionSwift
//
//  Created by Yemi Ajibola on 1/28/16.
//  Copyright © 2016 Yemi Ajibola. All rights reserved.
//

import UIKit

class Dragon: NSObject {
    
    // Properties
    var fullName:String
    var swag:String
    //var description:String
    
    override init()
    {
        self.fullName = ""
        self.swag = ""
    }
    
    init(name:String, swag:String)
    {
        self.fullName = name
        self.swag = swag
        
    }
    
    func customDescription() -> String
    {
        return fullName + " is never fully dressed without his " + swag
    }
    
    override var description:String
    {
            return customDescription()
    }
    
}
