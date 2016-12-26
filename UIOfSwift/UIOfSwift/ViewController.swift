//
//  ViewController.swift
//  UIOfSwift
//
//  Created by WangS on 16/12/26.
//  Copyright © 2016年 WangS. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    let ScreenW = UIScreen.main.bounds.size.width
    let ScreenH = UIScreen.main.bounds.size.height
    var dataSources = [String]()
    
    var myTableView = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.cyan
        self.title = "UITableView"
        dataSources = ["UILabel","UIButton","UITextFieldAndUITextView","UIViewAndUIImageView","UIScrollView","UITableView"]
        initTableVIew()
    }

    func initTableVIew()  {
        myTableView.frame = CGRect(x: 0, y: 64, width: ScreenW, height: ScreenH)
        myTableView.dataSource = self
        myTableView.delegate = self
        myTableView.backgroundColor = UIColor.cyan
        view.addSubview(myTableView)
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        let footerView = UIView(frame:CGRect(x: 0, y: 0, width: ScreenW, height: 1))
        myTableView.tableFooterView = footerView;
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return dataSources.count;
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
            cell.accessoryType = .disclosureIndicator
            cell.textLabel?.text = dataSources[indexPath.row]
            return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        switch indexPath.row {
        case 0:
            let vc = UILabelViewController()
            self.navigationController?.pushViewController(vc, animated: true)
            break
        case 1:
            let vc = UIButtonViewController()
            self.navigationController?.pushViewController(vc, animated: true)
            break
        case 2:
            let vc = UITextFieldViewController()
            self.navigationController?.pushViewController(vc, animated: true)
            break
        case 3:
            let vc = UIImgViewViewController()
            self.navigationController?.pushViewController(vc, animated: true)
            break
        case 4:
            let vc = UIScrollViewViewController()
            self.navigationController?.pushViewController(vc, animated: true)
            break
        case 5:
            let vc = UITableViewViewController()
            self.navigationController?.pushViewController(vc, animated: true)
            break
        default:
            break
        }
    }



}

