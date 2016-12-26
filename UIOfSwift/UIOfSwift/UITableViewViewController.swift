//
//  UITableViewViewController.swift
//  UIOfSwift
//
//  Created by WangS on 16/12/26.
//  Copyright © 2016年 WangS. All rights reserved.
//

import UIKit

class UITableViewViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    let ScreenW = UIScreen.main.bounds.size.width
    let ScreenH = UIScreen.main.bounds.size.height
    var dataSources = [String]()
    
    var myTableView = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.cyan
        self.title = "UITableView"
        dataSources = ["我是老大","我是老二","我是老三","我是老四","我是老六","我才是老六"]
        initTableVIew()
    }

    func initTableVIew()  {
        myTableView.frame = CGRect(x: 0, y: 64, width: ScreenW, height: ScreenH-64)
        myTableView.dataSource = self
        myTableView.delegate = self
        myTableView.backgroundColor = UIColor.cyan
        view.addSubview(myTableView)
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        myTableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "CustomCell")
        myTableView.register(UINib(nibName:"XibCustomTableViewCell",bundle:nil), forCellReuseIdentifier: "XibCustomCell")
        let footerView = UIView(frame:CGRect(x: 0, y: 0, width: ScreenW, height: 1))
        myTableView.tableFooterView = footerView;
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return dataSources.count;
        }else {
            return 1;
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3;
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
            cell.accessoryType = .disclosureIndicator
            cell.textLabel?.text = dataSources[indexPath.row]
            cell.detailTextLabel?.text = dataSources[indexPath.row]
            return cell
        }else if indexPath.section == 1{
            let cell:CustomTableViewCell = tableView.dequeueReusableCell(withIdentifier: "CustomCell")! as! CustomTableViewCell
            cell.customLab.text = "哈哈哈哈哈哈哈"
            return cell
            
        }else{
            let cell:XibCustomTableViewCell = tableView.dequeueReusableCell(withIdentifier: "XibCustomCell")! as! XibCustomTableViewCell
            cell.xibLab.text = "XIBXIBXIBXIBXIBXIBXIBIXBIBXIBXIB"
            return cell
        }
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let vc = SelectViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }

}
