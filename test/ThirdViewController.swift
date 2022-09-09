//
//  ThirdViewController.swift
//  test
//
//  Created by atul dhiman on 12/04/22.
//

import UIKit

class ThirdViewController: UIViewController,UITableViewDataSource ,UITableViewDelegate {
    
    

    @IBOutlet weak var nextbt: UIButton!
    @IBOutlet weak var dropview: UIView!
    private var dragView: UIView?
    @IBOutlet weak var selecttableView: UITableView!
     var name = ["hello"]
    var imgpart = UIImage()
    var gettingIMg : NSMutableArray = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func nextAction(_ sender: Any) {
        let nextvc = self.storyboard?.instantiateViewController(withIdentifier: "FourthViewController") as? FourthViewController
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
           return 1
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
           return 3
    }
    
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gettingIMg.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SelectedScrollerTableViewCell", for: indexPath) as! SelectedScrollerTableViewCell
        cell.IMG.image = UIImage(named: gettingIMg[indexPath.row]  as! String)
//        let lpGestureRecognizer: UILongPressGestureRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(didLongPressCell))
//        cell.contentView.addGestureRecognizer(lpGestureRecognizer)
        return cell
    }
    
    
//    @objc func didLongPressCell (recognizer: UILongPressGestureRecognizer) {
//            switch recognizer.state {
//            case .began:
//                if let cellView: UIView = recognizer.view {
//                    cellView.frame.origin = CGRect
//                    dragView = cellView
//                    view.addSubview(dragView!)
//                }
//            case .changed:
//                dragView?.center = recognizer.location(in: view)
//            case .ended:
//                if (dragView == nil) {return}
//
//                if (dragView!.frame.intersects(dropview.frame)) {
//                    if let cellView: UIView = ((dragView?.subviews[0]) as! UIView){
//                        cellView.frame.origin = CGPointZero
//                        dropview.addSubview(cellView)
//                    }
//
//                    dragView?.removeFromSuperview()
//                    dragView = nil
//
//                    //Delete row from UITableView if needed...
//                } else {
//                    //DragView was not dropped in dropszone... Rewind animation...
//                }
//            default:
//                print("Any other action?")
//            }
//        }
}
