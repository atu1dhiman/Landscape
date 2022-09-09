//
//  MainViewController.swift
//  test
//
//  Created by atul dhiman on 11/04/22.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var StartBT: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        let value = UIInterfaceOrientation.landscapeLeft.rawValue
        UIDevice.current.setValue(value, forKey: "orientation")
        // Do any additional setup after loading the view.
    }
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscapeLeft
    }
    override var shouldAutorotate: Bool {
        return true
    }
    
    @IBAction func StartBTAction(_ sender: Any) {
        let nextvc = self.storyboard?.instantiateViewController(withIdentifier: "secondViewController") as! secondViewController
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        self.navigationController?.pushViewController(nextvc, animated: true)
       
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func setupLandscapeView() -> UIViewController {
      let viewController = MainViewController()
      viewController.modalPresentationStyle = .fullScreen
      return viewController
    }

}
