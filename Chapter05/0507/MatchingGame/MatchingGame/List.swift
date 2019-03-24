//
//  List.swift
//  MatchingGame
//
//  Created by CoderDream on 2019/3/24.
//  Copyright © 2019 CoderDream. All rights reserved.
//

import Foundation
import UIKit

class ListViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView)->Int{
        return 1
    }

    func tableView(tableView: UITableView,numberOfRowsInSection section: Int) -> Int{
        return score.count
    }
    
    func tableView(tableView: UITableView,cellForRowAtIndexPath indexPath: NSIndexPath) ->UITableViewCell{
//        var identifier: NSString = "Cell"
//        var cell: UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: identifier as String) as? UITableViewCell
//
//        if(cell == nil){
//            cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: identifier as String)
//
//        }
//        cell!.textLabel?.text = "\(score.object(at: indexPath.row))"
//        return cell!
        
        // 手动注册 Cell
        var cell = tableView.dequeueReusableCell(withIdentifier: "cellID")
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cellID")
        }
        
        cell?.textLabel?.text = "\(score.object(at: indexPath.row))"
        return cell!
    }
}
