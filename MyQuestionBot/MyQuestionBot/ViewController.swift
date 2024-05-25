//
//  ViewController.swift
//  MyQuestionBot
//
//  Created by iOS Lab on 23/03/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
       super.viewDidLoad()
    }
    
    @IBOutlet weak var questionText: UITextField!
    
    @IBOutlet weak var answerText: UILabel!
    
    @IBAction func searchButton(_ sender: Any) {
        answerText.text = updateAnswer(question:questionText.text!)
        questionText.text = ""
    }
    
}
