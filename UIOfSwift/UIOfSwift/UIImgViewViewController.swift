//
//  UIImgViewViewController.swift
//  UIOfSwift
//
//  Created by WangS on 16/12/26.
//  Copyright © 2016年 WangS. All rights reserved.
//

import UIKit

class UIImgViewViewController: UIViewController {
    var myTimer = Foundation.Timer()
    var imgView:UIImageView = UIImageView()
    var timeLab = UILabel()
    
    var count = 0
    
    let view1 = UIView(frame:CGRect(x:10,y:64,width:150,height:150))
    let view2 = UIView(frame:CGRect(x:30,y:84,width:150,height:150))
    let view3 = UIView(frame:CGRect(x:50,y:104,width:150,height:150))
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.cyan
        setupView()
        setupBtn()
        setupImgView()
        setupTimer()
    }

    func setupView()  {
        
        view1.backgroundColor = UIColor.red
        view.addSubview(view1)
        
        
        view2.backgroundColor = UIColor.blue
        view.addSubview(view2)
        
        view3.backgroundColor = UIColor.green
        view.addSubview(view3)
    }
    
    func setupBtn()  {
        let btn1 = UIButton(type:.custom)
        btn1.frame = CGRect(x:210,y:150,width:160,height:30)
        btn1.setTitle("把红色视图放最上面", for: .normal)
        btn1.setTitleColor(UIColor.red, for: .normal)
        btn1.backgroundColor = UIColor.white
        btn1.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        btn1.addTarget(self, action: #selector(btn1Click), for: .touchUpInside)
        view.addSubview(btn1)
        
        let btn2 = UIButton(type:.custom)
        btn2.frame = CGRect(x:210,y:200,width:160,height:30)
        btn2.setTitle("把绿色视图放最下面", for: .normal)
        btn2.setTitleColor(UIColor.green, for: .normal)
        btn2.backgroundColor = UIColor.white
        btn2.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        btn2.addTarget(self, action: #selector(btn2Click), for: .touchUpInside)
        view.addSubview(btn2)
        
    }
    
    func btn1Click()  {
        view.bringSubview(toFront: view1)
    }
    func btn2Click()  {
        view.sendSubview(toBack: view3)
    }
    
    func setupImgView()  {
        imgView = UIImageView(frame:CGRect(x:20,y:300,width:150,height:150))
        imgView.image = UIImage(named:"img1")
        view.addSubview(imgView)
        
        timeLab = UILabel(frame:CGRect(x:200,y:300,width:100,height:30))
        timeLab.textAlignment = NSTextAlignment.center
        timeLab.textColor = UIColor.red
        timeLab.font = UIFont.systemFont(ofSize: 16)
        timeLab.text = "\(count)秒"
        view.addSubview(timeLab)
    }
    func setupTimer()  {
        myTimer = Foundation.Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(startTimer), userInfo: nil, repeats: true)
    }
    func startTimer()  {
        if count%2 == 0 {
            imgView.image = UIImage(named:"img1")
        }else{
            imgView.image = UIImage(named:"img2")
        }
        count += 1
        if count == 10 {
            count = 0
        }
        timeLab.text = "\(count)秒"
    }


}
