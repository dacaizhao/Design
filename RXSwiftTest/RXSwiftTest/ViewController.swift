//
//  ViewController.swift
//  RXSwiftTest
//
//  Created by point on 2017/5/15.
//  Copyright © 2017年 dacai. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
    @IBOutlet weak var dcBtn: UIButton!
    @IBOutlet weak var dcTextField: UITextField!
    fileprivate lazy var bag : DisposeBag = DisposeBag()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dcBtn.rx.tap.subscribe { (event : Event<()>) in
            print("按钮1发生了点击")
            }.addDisposableTo(bag)
        
        /*
         dcTextField.rx.text.subscribe { (event : Event<String?>) in
         print(event.element!!)
         }.addDisposableTo(bag)
         */
        
        
        /*
         dcTextField.rx.text.subscribe(onNext: { (str : String?) in
         print(str ?? "")
         }).addDisposableTo(bag)
         
         
         dcTextField.rx.text
         .bind(to: dcBtn.rx.title())
         .addDisposableTo(bag)
         */
        
        
        
        dcTextField.rx.observe(String.self, "text")
            .subscribe(onNext: { (str : String?) in
                print(str ?? "")
            }).addDisposableTo(bag)
        
        
        
        
        //        scrollView.rx.contentOffset
        //            .subscribe(onNext: { (point : CGPoint) in
        //                print(point)
        //            }).addDisposableTo(bag)
        
    }
    
    
    
}

