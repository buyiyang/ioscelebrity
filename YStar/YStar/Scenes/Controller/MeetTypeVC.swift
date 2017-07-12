//
//  MeetTypeVC.swift
//  YStar
//
//  Created by mu on 2017/7/4.
//  Copyright © 2017年 com.yundian. All rights reserved.
//

import UIKit

private let KMeetTypeCellID = "MeetTypeCell"

class MeetTypeVC: BaseTableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.contentInset = UIEdgeInsetsMake(64 + 40 + 33, 0, 49, 0)
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 255
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let meetTypeCell = tableView.dequeueReusableCell(withIdentifier: KMeetTypeCellID, for: indexPath) as! MeetTypeCell
        meetTypeCell.selectionStyle = .none
        meetTypeCell.meetTypeCollectionViewCell.reloadData()
        return meetTypeCell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        tableView.deselectRow(at: indexPath, animated: true)
        
        
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 0.01
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {

        return 0.01
    }
    
    
    @IBAction func AddMeetTypeAction(_ sender: UIButton) {
        
        print("点击了添加类型按钮")
        
        let meetTypeDetailVC = UIStoryboard.init(name: "Meet", bundle: nil).instantiateViewController(withIdentifier: "MeetTypeDetailVC")
        self.navigationController?.pushViewController(meetTypeDetailVC, animated: true)
        
        
    }
}
