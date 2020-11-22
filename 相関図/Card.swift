//
//  Card.swift
//  相関図
//
//  Created by 土屋絢大 on 2020/11/08.
//  Copyright © 2020 Kenta Tsuchiya. All rights reserved.
//

import Foundation
import UIKit
import RealmSwift

class Card{
    var name:UILabel!
    var faceImage:UIImageView!
    var namestring:String!
    
    init(){
        self.name.text = String(namestring)
    }
}
