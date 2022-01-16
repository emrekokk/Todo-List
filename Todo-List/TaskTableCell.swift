//
//  TaskTableCell.swift
//  Todo-List
//
//  Created by Emre Kök on 11.12.2021.
//

import Foundation
import UIKit

class TaskTableCell : UITableViewCell {

    let taskLabel: UILabel = {
    let label = UILabel()
         label.textColor = UIColor.darkGray
         label.textAlignment = .center
         label.text = "will fetch with users task"
         label.font = UIFont(name: "Montserrat", size: 30)
     return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)

   addSubview(taskLabel)

    taskLabel.translatesAutoresizingMaskIntoConstraints = false
    taskLabel.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
    taskLabel.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
    taskLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
    taskLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class ControllerUsesCell: UITableViewController {
    let defaultCellId = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(TaskTableCell.self, forCellReuseIdentifier: defaultCellId)
    }

  }
