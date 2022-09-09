//
//  secondViewController.swift
//  test
//
//  Created by atul dhiman on 12/04/22.
//

import UIKit

class secondViewController: UIViewController {
    
    @IBOutlet weak var nextBT: UIButton!
    var selectedIMg : NSMutableArray = ["0","0","0","0","0"]
    var passingIMg : NSMutableArray = []

    var namelabel = ["Head","Chest", "Lower abdomen","lowerPart","Legs"]
    @IBOutlet weak var parttableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.parttableview.isEditing = true
        self.parttableview.allowsMultipleSelectionDuringEditing = true
        }
        // Do any additional setup after loading the view.
    
    @IBAction func nextBTAction(_ sender: Any) {
//       selectDeslectCell(parttableview: UITableView, indexPath: IndexPath)
        passingIMg = []
        for (index,data) in selectedIMg.enumerated()
        {
            if data as! String == "1"
            {
                passingIMg.add(namelabel[index])
            }
        }
        let nextvc = self.storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as? ThirdViewController
        nextvc?.gettingIMg = passingIMg
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        self.navigationController?.pushViewController(nextvc!, animated: true)

    }
}

extension secondViewController : UITableViewDataSource ,UITableViewDelegate {
    
    func selectDeslectCell(parttableview: UITableView, indexPath: IndexPath )
    {
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return namelabel.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SpareTableViewCell", for: indexPath) as! SpareTableViewCell
        cell.imgl.image = UIImage(named: namelabel[indexPath.row])
        cell.imglabel.text = namelabel[indexPath.row]
//        cell.selectionStyle = .blue
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectDeslectCell(parttableview: tableView, indexPath: indexPath )
        self.selectedIMg.replaceObject(at: indexPath.row, with: "1")
//
        
        print("select")
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        self.selectDeslectCell(parttableview: tableView, indexPath: indexPath)
        self.selectedIMg.replaceObject(at: indexPath.row, with: "0")
        print("Deselect")
    }
    
}

