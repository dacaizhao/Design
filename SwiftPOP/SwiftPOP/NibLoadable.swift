//
//  NibLoadable.swift
//  SwiftPOP
//
//  Created by point on 2017/5/14.
//  Copyright © 2017年 dacai. All rights reserved.
//

import UIKit
protocol NibLoadable {
    
}

extension NibLoadable where Self : UIView {
    static func loadFromNib(_ nibname : String? = nil) -> Self {
        let loadName = nibname == nil ? "\(self)" : nibname!
        return Bundle.main.loadNibNamed(loadName, owner: nil, options: nil)?.first as! Self
    }
}
