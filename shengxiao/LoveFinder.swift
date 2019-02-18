//
//  LoveFinder.swift
//  shengxiao
//
//  Created by wei on 2018/11/28.
//  Copyright © 2018年 wells. All rights reserved.
//

import UIKit

class LoveFinder: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var gender: UISegmentedControl!
    @IBOutlet weak var birthday: UIDatePicker!
    @IBOutlet weak var heightNumber: UISlider!
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var hasProperty: UISwitch!
    
    @IBOutlet weak var result: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        print("fsdafasdfsd")
        name.delegate = self
        print("mergerer")
        // Do any additional setup after loading the view.
    }

    @IBAction func btnconfirm(_ sender: Any) {
        let genderText = gender.selectedSegmentIndex == 0 ? "高富帅" :"白富美"
        let  chooseDate = birthday.date
        let  dateFormater = DateFormatter.init()
        dateFormater.dateFormat = "YYYY-MM-dd"
        print(dateFormater.string(from: chooseDate))
        let hasPropertyText = hasProperty.isOn ? "有房" : "没房"
        result.text = "\(name.text ?? ""),我是\(genderText),出生在\(dateFormater.string(from: chooseDate))，我\(hasPropertyText)"
    }
    func testupdateMaster(){
        print("fdsafads")
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view .resignFirstResponder()
    }
    @IBAction func btnBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func heightChanged(_ sender: Any) {
        let slide = sender as! UISlider
        let i = Int(slide.value)
        slide.value = Float(i)
        
        height.text = "\(i)厘米"// slide.value
        
        
        //height.text = sender.value
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
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
