//
//  NewTaskVController.swift
//  Todo-List
//
//  Created by Emre Kök on 8.01.2022.
//

import Foundation
import UIKit

class NewTaskVController: UIViewController {
    var textScreen:String?
    
    @IBOutlet weak var descriptionNewTask: UILabel!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        descriptionNewTask.text = textScreen
        descriptionNewTask.textAlignment = .center
    }
}
