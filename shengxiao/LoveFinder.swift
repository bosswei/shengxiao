//
//  LoveFinder.swift
//  shengxiao
//
//  Created by wei on 2018/11/28.
//  Copyright © 2018年 wells. All rights reserved.
//

import UIKit

class LoveFinder: UIViewController {
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var gender: UISegmentedControl!
    @IBOutlet weak var birthday: UIDatePicker!
    @IBOutlet weak var heightNumber: UISlider!
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var hasProperty: UISwitch!
    
    @IBOutlet weak var result: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func btnconfirm(_ sender: Any) {
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view .resignFirstResponder()
    }
    @IBAction func btnBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
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
