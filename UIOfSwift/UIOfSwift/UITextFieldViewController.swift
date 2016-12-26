//
//  UITextFieldViewController.swift
//  UIOfSwift
//
//  Created by WangS on 16/12/26.
//  Copyright © 2016年 WangS. All rights reserved.
//

import UIKit

class UITextFieldViewController: UIViewController,UITextFieldDelegate,UITextViewDelegate {
    let myTextField1 = UITextField()
    let myTextField2 = UITextField()
    let myBtn = UIButton()
    let myTextView1 = UITextView()
    let myTextView2 = UITextView()
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.cyan
        
        setupUITextField()
    }
    func setupUITextField()  {
        myTextField1.frame = CGRect(x:20,y:64,width:200,height:30)
        myTextField1.borderStyle = UITextBorderStyle.roundedRect
        myTextField1.placeholder = "请输入内容"
        myTextField1.font = UIFont.systemFont(ofSize: 14)
        myTextField1.textAlignment = NSTextAlignment.left
        myTextField1.clearButtonMode = .always
        myTextField1.delegate = self
        view.addSubview(myTextField1)
        
        myTextField2.frame = CGRect(x:20,y:100,width:200,height:30)
        myTextField2.borderStyle = UITextBorderStyle.roundedRect
        myTextField2.placeholder = "请输入密码"
        myTextField2.font = UIFont.systemFont(ofSize: 14)
        myTextField2.textAlignment = NSTextAlignment.left
        myTextField2.clearButtonMode = .always
        myTextField2.keyboardType = .numberPad
        myTextField2.delegate = self
        view.addSubview(myTextField2)
        
        myBtn.frame = CGRect(x:20,y:150,width:200,height:30)
        myBtn.backgroundColor = UIColor.white
        myBtn.setTitleColor(UIColor.green, for: .normal)
        myBtn.setTitleColor(UIColor.red, for: .selected)
        myBtn.setTitle("点击出现UITextView", for: UIControlState.normal)
        myBtn.addTarget(self, action: #selector(btnClick), for: .touchUpInside)
        view.addSubview(myBtn)
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if textField == myTextField1 {
            if ((textField.text?.characters.count)! > 6) {
                return false
            }
        }else if textField == myTextField2 {
            if ((textField.text?.characters.count)! > 8) {
                return false
            }
        }
        return true
    }
    func btnClick()  {
        myBtn.isSelected = !myBtn.isSelected
        setupUITextView()
    }
    func setupUITextView()  {
        myTextView1.frame = CGRect(x: 20, y: 200, width: UIScreen.main.bounds.size.width - 40, height: 300)
        myTextView1.delegate = self
        myTextView1.textAlignment = .left
        myTextView1.textColor = UIColor.red
        myTextView1.backgroundColor = UIColor.white
        myTextView1.dataDetectorTypes = .link
        view.addSubview(myTextView1)
        
        let weixin = UIMenuItem(title: "微信", action: #selector(UITextFieldViewController.onWeiXin))
        let qq = UIMenuItem(title: "QQ", action: #selector(UITextFieldViewController.onQQ))
        let menuVC = UIMenuController()
        menuVC.menuItems = [weixin,qq]
    }
    func onWeiXin()  {
        print("weixin")
    }
    func onQQ()  {
        print("qq")
    }
    func textViewDidChange(_ textView: UITextView) {
        
        var str = textView.text
        if (str?.characters.count)!>4 {
            let index = str?.index((str?.startIndex)!, offsetBy: 4)
            myTextView1.text = str?.substring(to: index!)
        }
    }
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if range.location>10 {
            return false
        }
        return true
    }

}
