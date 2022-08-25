//
//  TextToEmojiViewController.swift
//  Status Saver
//
//  Created by macOS on 01/03/22.
//

import UIKit

class TextToEmojiViewController: UIViewController {

    @IBOutlet weak var messageTxt: UITextField!
    @IBOutlet weak var resetBtn: UIButton!
    @IBOutlet weak var generateBtn: UIButton!
    @IBOutlet weak var resultTextview: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIdesign()
        title = "Text to Emoji"
    }
        
    @IBAction func copytext(_ sender: Any) {
        if resultTextview.text.isEmpty {
            self.showToast(message: "Please generate Emojis..!", font: .systemFont(ofSize: 12.0),frame: CGRect(x: self.view.frame.size.width/2 - 90, y: self.view.frame.size.height-100, width: 200, height: 35))
        }else{
            UIPasteboard.general.string = resultTextview.text
            self.showToast(message: "Copy", font: .systemFont(ofSize: 12.0),frame: CGRect(x: self.view.frame.size.width/3, y: self.view.frame.size.height-100, width: 100, height: 35))
        }
    }
    
    @IBAction func shareBtn(_ sender: Any) {
        if resultTextview.text.isEmpty {
            self.showToast(message: "Please generate Emojis..!", font: .systemFont(ofSize: 12.0),frame: CGRect(x: self.view.frame.size.width/2 - 90, y: self.view.frame.size.height-100, width: 200, height: 35))
        }else{
            let urlWhats = "whatsapp://send?&text=\(resultTextview.text!)"
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
    
    @IBAction func resetBtn(_ sender: UIButton) {
        resultTextview.text = ""
    }

    @IBAction func textToEmojiBtn(_ sender: UIButton) {
        resultTextview.text = emojiAll[messageTxt.text!]
    }
}
