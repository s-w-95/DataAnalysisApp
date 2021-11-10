//
//  CalculatorResultViewController.swift
//  Integrate
//
//  Created by jaewon on 11/10/21.
//

import UIKit

class CalculatorResultViewController: UIViewController {

    var txt: String = ""
    var result: String! = ""
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var resultText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.text = txt
        resultText.text = String(result)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
