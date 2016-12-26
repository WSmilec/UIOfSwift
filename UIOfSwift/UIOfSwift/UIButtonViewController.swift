//
//  UIButtonViewController.swift
//  UIOfSwift
//
//  Created by WangS on 16/12/26.
//  Copyright © 2016年 WangS. All rights reserved.
//

import UIKit

class UIButtonViewController: UIViewController {
    let btn2 = UIButton(type:.custom)
    let btn3 = UIButton(type:.custom)
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.cyan
        setupBtn1()
        setupBtn2()
        setupBtn3()
    }

    func setupBtn1()  {
        let btn1 = UIButton(type:.custom)
        btn1.frame = CGRect(x:20,y:80,width:100,height:30)
        btn1.setTitle("点我", for: .normal)
        btn1.setTitleColor(UIColor.red, for: .normal)
        btn1.backgroundColor = UIColor.white
        btn1.addTarget(self, action: #selector(btn1Click), for: .touchUpInside)
        view.addSubview(btn1)
    }
    func btn1Click()  {
        print("点了点了点了")
    }
    
    func setupBtn2()  {
        btn2.frame = CGRect(x:20,y:120,width:100,height:30)
        btn2.setTitle("点我", for: .normal)
        btn2.setTitleColor(UIColor.blue, for: .normal)
        btn2.backgroundColor = UIColor.white
        btn2.addTarget(self, action: #selector(btn2Click(_:)), for: .touchUpInside)
        view.addSubview(btn2)
    }
    func btn2Click(_:UIButton)  {
        btn2.setTitle("别再点我了", for: .normal)
    }
    
    func setupBtn3()  {
        btn3.frame = CGRect(x:20,y:200,width:100,height:100)
        btn3.setImage(UIImage.init(named: "img1"), for: .normal)
        btn3.addTarget(self, action: #selector(btn3Click(_:)), for: .touchUpInside)
        view.addSubview(btn3)
    }
    func btn3Click(_:UIButton)  {
        print("11111----\(btn3.isSelected)")
        if btn3.isSelected {
            btn3.setImage(UIImage.init(named: "img1"), for: .normal)
            btn3.isSelected = false
        }else{
            btn3.setImage(UIImage.init(named: "img2"), for: .normal)
            btn3.isSelected = true
        }
    }


}
