//
//  List.swift
//  MatchingGame
//
//  Created by CoderDream on 2019/3/24.
//  Copyright © 2019 CoderDream. All rights reserved.
//

import Foundation
import UIKit

class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return score.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 手动注册 Cell
        var cell = tableView.dequeueReusableCell(withIdentifier: "cellID")
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cellID")
        }

        cell?.textLabel?.text = "\(score.object(at: indexPath.row))"
        return cell!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
