//
//  ViewController.swift
//  shengxiao
//
//  Created by wei on 2018/11/28.
//  Copyright © 2018年 wells. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let offset = 4
    @IBOutlet weak var txtField: UITextField!
    @IBOutlet weak var imgShow: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnNext(_ sender: Any) {
        let love = LoveFinder.init(nibName: "LoveFinder", bundle: nil)
        self.present(love, animated: true, completion: nil)
    }
    @IBAction func btnClick(_ sender: UIButton) {

        if let year = Int(txtField.text ?? "0") {
            let imageNumber = (year - offset) % 12
            imgShow.image = UIImage.init(named: String(imageNumber))
        }else{
            print("没有输入哦")
        }
        
        
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        txtField.resignFirstResponder()
    }
}

