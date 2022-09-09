//
//  FourthViewController.swift
//  test
//
//  Created by atul dhiman on 12/04/22.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet weak var colorBT: UIButton!
    @IBOutlet weak var bodyImg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
    }
    

    @IBAction func ColorAction(_ sender: Any) {
        bodyImg.image = UIImage(named: "red")
        
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
