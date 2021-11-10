//
//  FlashViewController.swift
//  Integrate
//
//  Created by jaewon on 11/10/21.
//

import UIKit

class FlashViewController: UIViewController {

    @IBOutlet weak var flashImgae: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onButtonClicked(_ sender: Any) {
        view.backgroundColor = UIColor.white
        flashImgae.tintColor = UIColor.yellow
        flashImgae.image = UIImage(systemName: "flashlight.on.fill")
    }
    @IBAction func offButtonClicked(_ sender: Any) {
        view.backgroundColor = UIColor.black
        flashImgae.tintColor = UIColor.systemPink
        flashImgae.image = UIImage(systemName: "flashlight.off.fill")
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
