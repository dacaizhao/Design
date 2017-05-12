//
//  MainViewController.swift
//  Wedding
//
//  Created by point on 2017/5/11.
//  Copyright © 2017年 dacai. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {
    
    fileprivate lazy var imageNames = ["tabbar_home", "tabbar_message_center", "", "tabbar_discover", "tabbar_profile"]
    fileprivate lazy var composeBtn : UIButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1.将composeBtn添加到tabbar中
        tabBar.addSubview(composeBtn)
        
        // 2.设置属性
        composeBtn.setBackgroundImage(UIImage(named: "tabbar_compose_button"), for:.normal)
        composeBtn.setBackgroundImage(UIImage(named: "tabbar_compose_button_highlighted"), for: .highlighted)
        composeBtn.setImage(UIImage(named: "tabbar_compose_icon_add"), for: .normal)
        composeBtn.setImage(UIImage(named: "tabbar_compose_icon_add_highlighted"), for: .highlighted)
        composeBtn.sizeToFit()
        
        // 3.设置位置
        composeBtn.center = CGPoint(x: tabBar.center.x, y: tabBar.bounds.size.height * 0.5)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        for i in 0..<tabBar.items!.count {
            let item = tabBar.items![i]
            if i == 2 {
                item.isEnabled = false
                continue
            }
            item.selectedImage = UIImage(named: imageNames[i] + "_highlighted")
        }
    }
    

}
