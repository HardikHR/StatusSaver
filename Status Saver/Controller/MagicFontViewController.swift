//
//  MagicFontViewController.swift
//  Status Saver
//
//  Created by macOS on 01/03/22.
//

import UIKit
import DLRadioButton

class MagicFontViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {

    @IBOutlet weak var NameText: UITextField!
    @IBOutlet weak var EmojiAndText: UITextField!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var GenerateButton: UIButton!
    @IBOutlet weak var CopyBtn: UIButton!
    @IBOutlet weak var sharebtn: UIButton!
    @IBOutlet weak var TextRadionBtn: DLRadioButton!
    @IBOutlet weak var EmojiRadioBtn: DLRadioButton!
    @IBOutlet weak var ResultTxtView: UITextView!
    @IBOutlet var radio: [DLRadioButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TextRadionBtn.isSelected = true
        title = "Magic Fonts"
        ResultTxtView.delegate = self
        EmojiAndText.delegate = self
        UIdesign()
        self.hideKeyboardWhenTappedAround()
    }

    @IBAction func ResetBtnTapped(_ sender: Any) {
        ResultTxtView.text = ""
    }
    
    
    @IBAction func radioSelected(_ sender: DLRadioButton) {
        if sender.tag == 1{
            
        }else{
            
        }
    }
    
    
    @IBAction func GenerateBtnTapped(_ sender: UIButton) {
       // ResultTxtView.text = charDraw(name: "\(NameText.text!)\n").replacingOccurrences(of: "*", with: EmojiAndText.text!)
        
        if TextRadionBtn.isEnabled {
            let string = NameText.text!
            for (_, char) in string.enumerated() {
               let text = charDraw(name:String(char)).replacingOccurrences(of: "*", with: EmojiAndText.text!)
                print(text)
                ResultTxtView.text = text
            }
        }else if EmojiAndText.isEnabled {
            EmojiAndText.text = ""
            let string = NameText.text!
            for (_, char) in string.enumerated() {
                ResultTxtView.text = charDraw(name:String(char)).replacingOccurrences(of: "*", with: EmojiAndText.text!)
            }
        }
        
        /*if NameText.tex   t == ""{
            self.showToast(message: "Enter text", font: .systemFont(ofSize: 12.0),frame: CGRect(x: self.view.frame.size.width/3, y: self.view.frame.size.height-100, width: 100, height: 35))
        }
        if EmojiAndText.text == "" {
            self.showToast(message: "Enter Emoji", font: .systemFont(ofSize: 12.0),frame: CGRect(x: self.view.frame.size.width/3, y: self.view.frame.size.height-100, width: 100, height: 35))
        }*/
    }
        
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let currentCharacterCount = textField.text?.count ?? 0
        if range.length + range.location > currentCharacterCount {
            return false
        }
        let newLength = currentCharacterCount + string.count - range.length
        return newLength <= 1
    }
    
    @IBAction func copyBtn(_ sender: UIButton) {
        if ResultTxtView.text.isEmpty {
            self.showToast(message: "Please generate text..!", font: .systemFont(ofSize: 12.0), frame: CGRect(x: self.view.frame.size.width/2 - 90, y: self.view.frame.size.height-100, width: 200, height: 35))
        }else{
            UIPasteboard.general.string = ResultTxtView.text
            self.showToast(message: "Copy", font: .systemFont(ofSize: 12.0),frame: CGRect(x: self.view.frame.size.width/3, y: self.view.frame.size.height-100, width: 100, height: 35))
        }
    }
    
    @IBAction func shareBtn(_ sender: UIButton) {
        if ResultTxtView.text.isEmpty {
            self.showToast(message: "Please generate text..!", font: .systemFont(ofSize: 12.0), frame: CGRect(x: self.view.frame.size.width/2 - 90, y: self.view.frame.size.height-100, width: 200, height: 35))
        }else{
            let urlWhats = "whatsapp://send?&text=\(ResultTxtView.text!)"
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


