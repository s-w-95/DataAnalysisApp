//
//  CalculatorViewController.swift
//  Integrate
//
//  Created by jaewon on 11/10/21.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.text = ""
        // Do any additional setup after loading the view.
    }
    @IBAction func zeroButtonClicked(_ sender: Any) {
        textField.text! += "0"
    }
    @IBAction func oneButtonClicked(_ sender: Any) {
        textField.text! += "1"
    }
    @IBAction func twoButtonClicked(_ sender: Any) {
        textField.text! += "2"
    }
    @IBAction func threeButtonClicked(_ sender: Any) {
        textField.text! += "3"
    }
    @IBAction func fourButtonClicked(_ sender: Any) {
        textField.text! += "4"
    }
    @IBAction func fiveButtonClicked(_ sender: Any) {
        textField.text! += "5"
    }
    @IBAction func sixButtonClicked(_ sender: Any) {
        textField.text! += "6"
    }
    @IBAction func sevenButtonClicked(_ sender: Any) {
        textField.text! += "7"
    }
    @IBAction func eightButtonClicked(_ sender: Any) {
        textField.text! += "8"
    }
    @IBAction func nineButtonClicked(_ sender: Any) {
        textField.text! += "9"
    }
    @IBAction func plusButtonClicked(_ sender: Any) {
        textField.text! += "+"
    }
    @IBAction func minusButtonClicked(_ sender: Any) {
        textField.text! += "-"
    }
    @IBAction func multiplyButtonClicked(_ sender: Any) {
        textField.text! += "*"
    }
    @IBAction func divideButtonClicked(_ sender: Any) {
        textField.text! += "/"
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let controller = segue.destination as? CalculatorResultViewController{
            controller.txt = textField.text!
            controller.result = String(calculate())
        }
    }
    
    func calculate() -> Float {
        var nums: [Float] = []
        var signs: [String] = []
        var result: Float = 0
        let txt: String = textField.text ?? ""
        let arr = Array(txt)
        
        if txt == "" {
            return 0
        }
        var tmp: Float = 0
        for i in 0..<arr.count {
            if arr[i] == "+" || arr[i] == "-" || arr[i] == "*" || arr[i] == "/" {
                nums.append(tmp)
                tmp = 0
                signs.append(String(arr[i]))
            } else {
                tmp *= 10
                tmp += Float(String(arr[i]))!
            }
        }
        nums.append(tmp)
        
        for sign in signs {
            if sign == "*"{
                let idx: Int = signs.firstIndex(of: sign)!
                nums[idx] = Float(String(nums[idx]))! * Float(String(nums[idx+1]))!
                nums.remove(at: idx+1)
                signs.remove(at: idx)
            } else if sign == "/"{
                let idx: Int = signs.firstIndex(of: sign)!
                nums[idx] = Float(String(nums[idx]))! / Float(String(nums[idx+1]))!
                nums.remove(at: idx+1)
                signs.remove(at: idx)
            }
        }
        result = nums[0]
        for i in 0..<signs.count {
            if signs[i] == "+"{
                result += Float(String(nums[i+1]))!
            } else if signs[i] == "-"{
                result -= Float(String(nums[i+1]))!
            }
        }
        
        return result
    }

}
