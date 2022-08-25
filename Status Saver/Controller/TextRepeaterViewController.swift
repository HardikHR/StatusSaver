//
//  TextRepeaterViewController.swift
//  Status Saver
//
//  Created by macOS on 01/03/22.
//

import UIKit
import DLRadioButton

class TextRepeaterViewController: UIViewController,UITextFieldDelegate{
    
    @IBOutlet weak var messageTxt: UITextField!
    @IBOutlet weak var repeatCount: UITextField!
    @IBOutlet weak var newLineRadioBtn: DLRadioButton!
    @IBOutlet weak var resetBtn: UIButton!
    @IBOutlet weak var generateBtn: UIButton!
    @IBOutlet weak var resultTxtView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIdesign()
        repeatCount.delegate = self
        title = "Text Repeater"
        self.newLineRadioBtn.isMultipleSelectionEnabled = true
        for radioButton in self.newLineRadioBtn.otherButtons {
            radioButton.isSelected = true
        }
    }
    
    @IBAction func btnReset(_ sender: UIButton) {
        resultTxtView.text = ""
    }
    @IBAction func btnGenerate(_ sender: UIButton) {
        let space = " "
        let newLine = "\n"
        
        let repet = repeatCount.text
        if newLineRadioBtn.isSelected {
            resultTxtView.text = BySpace(str: messageTxt.text!+newLine, repeatTimes: Int(repet!) ?? 0)
        }else{
        resultTxtView.text = BySpace(str: messageTxt.text!+space, repeatTimes: Int(repet!) ?? 0)
        }
    }
        
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let allowedCharacters = CharacterSet.decimalDigits
        let characterSet = CharacterSet(charactersIn: string)
        return allowedCharacters.isSuperset(of: characterSet) && range.location < 4
    }
    func BySpace (str: String, repeatTimes: Int) -> String {
        return String(repeating: str, count: repeatTimes)
    }
    
    @IBAction func copyBtn(_ sender: UIButton) {
        if resultTxtView.text.isEmpty {
            self.showToast(message: "Please generate text repeat..!", font: .systemFont(ofSize: 12.0),frame: CGRect(x: self.view.frame.size.width/2 - 90, y: self.view.frame.size.height-100, width: 200, height: 35))
        }else{
            UIPasteboard.general.string = resultTxtView.text
            self.showToast(message: "Copy", font: .systemFont(ofSize: 12.0),frame: CGRect(x: self.view.frame.size.width/3, y: self.view.frame.size.height-100, width: 100, height: 35))
        }
    }
    
    @IBAction func ShareBtn(_ sender: UIButton) {
        if resultTxtView.text.isEmpty {
            self.showToast(message: "Please generate text repeat..!", font: .systemFont(ofSize: 12.0), frame: CGRect(x: self.view.frame.size.width/2 - 90, y: self.view.frame.size.height-100, width: 200, height: 35))
        }else{
            let urlWhats = "whatsapp://send?&text=\(resultTxtView.text!)"
            let characterSet = CharacterSet.urlQueryAllowed
            if let urlString = urlWhats.addingPercentEncoding(withAllowedCharacters: characterSet){
                print(urlWhats)
                if let whatsappURL = NSURL(string: urlString) {
                    if UIApplication.shared.canOpenURL(whatsappURL as URL){
                        UIApplication.shared.open(whatsappURL as URL)
                    }
                    else {
                        print("Install Whatsapp")
                    }
                }
            }
        }
    }
}


