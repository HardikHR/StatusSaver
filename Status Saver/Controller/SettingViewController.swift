//
//  SettingViewController.swift
//  Status Saver
//
//  Created by macOS on 01/03/22.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet weak var id: UITextField!
    @IBOutlet weak var category_id: UITextField!
    @IBOutlet weak var quote_View: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Setting"
    }
    
    @IBAction func Get(_ sender: UIButton) {
        let _id = Int(id.text!)
        let cat_id = Int(category_id.text!)
        let modelinfo = quotes(_id: _id!, category_id: cat_id!, quote: quote_View.text)
       print(DataBaseHelper.getInstance().fetch(_modelinfo: modelinfo))
    }
}
