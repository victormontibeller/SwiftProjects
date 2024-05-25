//
//  MyController.swift
//  StoryBoard
//
//  Created by iOS Lab on 16/03/24.
//

import UIKit

class MyController: UIViewController {
    
    @IBOutlet weak var nameLable: UILabel!
    
    @IBAction func actionButton(_ sender: Any) {
        nameLable.text = "Victor Montibeller"
    }
    
}
