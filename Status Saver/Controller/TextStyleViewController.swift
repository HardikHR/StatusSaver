//
//  TextStyleViewController.swift
//  Status Saver
//
//  Created by macOS on 01/03/22.
//

import UIKit
import iOSDropDown

class TextStyleViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var fontTxt: DropDown!
    @IBOutlet weak var textMessage: UITextView!
    @IBOutlet weak var resultTxtView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIdesign()
        textMessage.delegate = self
        resultTxtView.delegate = self
        title = "Text Style"
        textMessage.delegate = self
        textMessage.text = "Enter Text"
        textMessage.textColor = UIColor.lightGray
        fontTxt.optionArray = Allfonts
        fontTxt.didSelect{(selectedText , index ,id) in
            self.fontTxt.text = selectedText
            self.fontTxt.selectedRowColor = #colorLiteral(red: 0.9725490196, green: 0.5254901961, blue: 0.7019607843, alpha: 1)
            self.fontTxt.showList()
            self.fontTxt.hideList()
        }
    }

    func textViewDidBeginEditing(_ textView: UITextView) {
        if textMessage.textColor == UIColor.lightGray {
            textMessage.text = nil
            textMessage.textColor = UIColor.black
        }
    }
    
    func textViewDidChange(_ textView: UITextView) {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.fontTxt.hideList()
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textMessage.text.isEmpty {
            textMessage.text = "Enter Text"
            textMessage.textColor = UIColor.lightGray
        }
    }
    
    @IBAction func copyBtn(_ sender: UIButton) {
        if resultTxtView.text.isEmpty {
            self.showToast(message: "Please generate text style..!", font: .systemFont(ofSize: 12.0),frame: CGRect(x: self.view.frame.size.width/2 - 90, y: self.view.frame.size.height-100, width: 200, height: 35))
        }else{
            UIPasteboard.general.string = resultTxtView.text
            self.showToast(message: "Copy", font: .systemFont(ofSize: 12.0),frame: CGRect(x: self.view.frame.size.width/3, y: self.view.frame.size.height-100, width: 100, height: 35))
        }
    }
    
    @IBAction func shareBtn(_ sender: UIButton) {
        if resultTxtView.text.isEmpty {
            self.showToast(message: "Please generate text style..!", font: .systemFont(ofSize: 12.0), frame: CGRect(x: self.view.frame.size.width/2 - 90, y: self.view.frame.size.height-100, width: 200, height: 35))
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
