//
//  UIScrollViewViewController.swift
//  UIOfSwift
//
//  Created by WangS on 16/12/26.
//  Copyright © 2016年 WangS. All rights reserved.
//

import UIKit

class UIScrollViewViewController: UIViewController,UIScrollViewDelegate {
    let ScreenW = UIScreen.main.bounds.size.width
    let ScreenH = UIScreen.main.bounds.size.height
    let myScrollView = UIScrollView()
    let imgArr = ["img1","img2","img3"];
    let count = 0;
    var myTimer = Foundation.Timer()
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.cyan
        
        setupScrollView()
        setupImgView()
    }

    func setupScrollView()  {
        myScrollView.frame = CGRect(x:0,y:64,width:ScreenW,height:200)
        myScrollView.contentSize = CGSize(width:ScreenW * 3,height:0)
        myScrollView.backgroundColor = UIColor.blue
        myScrollView.isPagingEnabled = true
        myScrollView.bounces = false
        myScrollView.delegate = self
        myScrollView.showsHorizontalScrollIndicator = false
        view.addSubview(myScrollView)
    }
    func setupImgView()  {
        for i in 0 ..< imgArr.count {
            let imgView = UIImageView(frame:CGRect(x:ScreenW * CGFloat(i),y:0,width:ScreenW,height:200))
            imgView.image = UIImage(named:imgArr[i])
            myScrollView.addSubview(imgView)
        }
    }

}
