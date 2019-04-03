//
//  Score.swift
//  SpaceInvaders
//
//  Created by CoderDream on 2019/3/29.
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
    
//    func tableView(tableView: UITableView,cellForRowAtIndexPath indexPath: NSIndexPath) ->UITableViewCell{
//        var CellIdentifier:NSString="Cell"
//        var cell: UITableViewCell? = tableView.dequeueReusableCellWithIdentifier(CellIdentifier as String) as? UITableViewCell
//
//        if(cell == nil){
//            cell=UITableViewCell(style: UITableViewCell.CellStyle.Value1, reuseIdentifier: CellIdentifier)
//            cell?.backgroundColor=UIColor.clearColor()
//            cell?.detailTextLabel?.textColor=UIColor.blackColor()
//        }
//        cell!.textLabel.text="\(score.objectAtIndex(indexPath.row))"
//        cell!.detailTextLabel?.text="\(time.objectAtIndex(indexPath.row))"
//
//        return cell!
//    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 手动注册 Cell
        var cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
            cell?.backgroundColor = UIColor.clear
            cell?.detailTextLabel?.textColor = UIColor.black
        }
        
        cell?.textLabel?.text = "\(score.object(at: indexPath.row))"
        cell!.detailTextLabel?.text="\(time.object(at: indexPath.row))"
        
        return cell!
    }
    
}
