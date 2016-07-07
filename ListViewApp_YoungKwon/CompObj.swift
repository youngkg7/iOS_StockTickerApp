//
//  CompObj.swift
//  ListViewApp_YoungKwon
//
//  Created by Young Kwon on 3/9/16.
//  Copyright © 2016 Young Kwon. All rights reserved.
//

import UIKit
//import CoreData

class CompObj: NSObject {
    var name = ""
    var desc = ""
    var image = ""
    var cap = ""
    var pe = ""
    
    init(name: String, desc: String, image: String, cap: String, pe: String)
    {
        self.name = name
        self.desc = desc
        self.image = image
        self.cap = cap
        self.pe = pe
    }

}
