//
//  UILabelViewController.swift
//  UIOfSwift
//
//  Created by WangS on 16/12/26.
//  Copyright © 2016年 WangS. All rights reserved.
//

import UIKit

class UILabelViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.cyan
        setupLab1();
        setupLab2();
        setupLab3();

    }

    func setupLab1() {
        let lab1 = UILabel(frame:CGRect(x:20,y:80,width:200,height:20))
        lab1.text = "学习Swift3.0";
        lab1.textColor = UIColor.black
        lab1.backgroundColor = UIColor.white
        lab1.textAlignment = NSTextAlignment.center
        lab1.font = UIFont.systemFont(ofSize: 18)
        lab1.shadowColor = UIColor.blue
        lab1.shadowOffset = CGSize(width:-5,height:5)
        view.addSubview(lab1)
    }
    func setupLab2() {
        let lab2 = UILabel(frame:CGRect(x:20,y:120,width:200,height:50))
        lab2.text = "我要换行我要换行我要换行我要换行我要换行我要换行我要换行我要换行我要换行我要换行我要换行我要换行我要换行我要换行我要换行我要换行我要换行我要换行";
        lab2.textColor = UIColor.white
        lab2.backgroundColor = UIColor.black
        lab2.textAlignment = NSTextAlignment.center
        lab2.font = UIFont.systemFont(ofSize: 18)
        lab2.numberOfLines = 0;
        lab2.isHighlighted = true
        lab2.highlightedTextColor = UIColor.red
        lab2.lineBreakMode = NSLineBreakMode.byCharWrapping //多余部分不显示
        lab2.adjustsFontSizeToFitWidth = true //自动调整文字大小
        /*
         lab2.lineBreakMode=NSLineBreakMode.byTruncatingTail  //隐藏尾部并显示省略号
         lab2.lineBreakMode=NSLineBreakMode.byTruncatingMiddle  //隐藏中间部分并显示省略号
         lab2.lineBreakMode=NSLineBreakMode.byTruncatingHead  //隐藏头部并显示省略号
         lab2.lineBreakMode=NSLineBreakMode.byClipping  //截去多余部分也不显示省略号
         */
        view.addSubview(lab2)
    }
    func setupLab3()  {
        let lab3 = UILabel(frame:CGRect(x:20,y:200,width:UIScreen.main.bounds.size.width-40,height:30))
        lab3.backgroundColor = UIColor.white
        lab3.textAlignment = NSTextAlignment.center
        let someString = "我是富文本设置哦啦啦啦啊鹅鹅鹅饿恩恩"
        let attributeString = NSMutableAttributedString(string:someString)
        attributeString.addAttribute(NSFontAttributeName, value: UIFont.systemFont(ofSize: 14), range: NSMakeRange(0,5))
        attributeString.addAttribute(NSForegroundColorAttributeName, value: UIColor.red, range: NSMakeRange(0, 5))
        attributeString.addAttribute(NSBackgroundColorAttributeName, value: UIColor.black, range: NSMakeRange(0, 5))
        
        attributeString.addAttributes([NSFontAttributeName : UIFont.systemFont(ofSize: 20) ,NSBackgroundColorAttributeName : UIColor.green,NSForegroundColorAttributeName : UIColor.blue], range: NSMakeRange(5, someString.characters.count - 5))
        
        lab3.attributedText = attributeString
        view.addSubview(lab3)
    }


}
