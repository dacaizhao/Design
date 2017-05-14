//
//  ViewController.swift
//  SwiftPOP
//
//  Created by point on 2017/5/14.
//  Copyright © 2017年 dacai. All rights reserved.
//

import UIKit

class ViewController:UIViewController, DCProtocol  , Emitterable{

    override func viewDidLoad() {
        super.viewDidLoad()
        test()
        // Do any additional setup after loading the view, typically from a nib.
        let demoView = DCView.loadFromNib()
        demoView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
     
        view.addSubview(demoView)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        startEmittering(CGPoint(x: view.bounds.height * 0.5 , y: view.bounds.height))
    }


}

