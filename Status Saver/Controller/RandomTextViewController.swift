//
//  RandomTextViewController.swift
//  Status Saver
//
//  Created by macOS on 01/03/22.
//

import UIKit
import DLRadioButton

class RandomTextViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var RepeatCountTxt: UITextField!
    @IBOutlet weak var AlphabeetStringRadiobtn: DLRadioButton!
    @IBOutlet weak var RandomEmjojiRadiobtn: DLRadioButton!
    @IBOutlet weak var ASCIICharRadiobtn: DLRadioButton!
    @IBOutlet weak var DigitsRadiobtn: DLRadioButton!
    @IBOutlet weak var EmojisRadiobtn: DLRadioButton!
    @IBOutlet weak var resetBtn: UIButton!
    @IBOutlet weak var generateBtn: UIButton!
    @IBOutlet weak var resultTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIdesign()
        RepeatCountTxt.delegate = self
        title = "Random Text"
        AlphabeetStringRadiobtn.isSelected = true
    }
    
    @IBAction func GenerateBtn(_ sender: UIButton) {
        if RepeatCountTxt.text == "" {
            RepeatCountTxt.layer.borderColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
            self.showToast(message: "Please enter number..!", font: .systemFont(ofSize: 12.0),frame: CGRect(x: self.view.frame.size.width/2 - 90, y: self.view.frame.size.height-100, width: 200, height: 35))
        }else{
            RepeatCountTxt.layer.borderColor = #colorLiteral(red: 0.3411764706, green: 0.262745098, blue: 0.6470588235, alpha: 1)
            generateType()
        }
    }
    
    @IBAction func resetBtn(_ sender: UIButton) {
        resultTextView.text = ""
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let allowedCharacters = CharacterSet.decimalDigits
        let characterSet = CharacterSet(charactersIn: string)
        return allowedCharacters.isSuperset(of: characterSet) && range.location < 4
    }
    
    func generateType(){
        if AlphabeetStringRadiobtn.isSelected == true{
            let repet = RepeatCountTxt.text
            resultTextView.text = randomString(length: Int(repet!) ?? 0)
            RepeatCountTxt.resignFirstResponder()
       
        }else if DigitsRadiobtn.isSelected == true{
            let repet = RepeatCountTxt.text
            resultTextView.text = randomDigit(length: Int(repet!) ?? 0)
            RepeatCountTxt.resignFirstResponder()
      
        }else if ASCIICharRadiobtn.isSelected == true{
            let repet = RepeatCountTxt.text
            resultTextView.text = randomASCII(length: Int(repet!) ?? 0)
            RepeatCountTxt.resignFirstResponder()
      
        }else if EmojisRadiobtn.isSelected == true{
            let repet = RepeatCountTxt.text
            resultTextView.text = randomEmoji(length: Int(repet!) ?? 0)
            RepeatCountTxt.resignFirstResponder()
        
        }else if RandomEmjojiRadiobtn.isSelected == true{
            let repet = RepeatCountTxt.text
            resultTextView.text = randomOtherEmojis(length: Int(repet!) ?? 0)
            RepeatCountTxt.resignFirstResponder()
        }
    }
    
    func randomString(length: Int) -> String {
        let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
        return String((0..<length).map{ _ in letters.randomElement()! })
    }
    
    func randomDigit(length: Int) -> String {
        let letters = "0123456789"
        return String((0..<length).map{ _ in letters.randomElement()! })
    }
    
    func randomEmoji(length: Int) -> String {
        let letters = random_emojis
        return String((0..<length).map{ _ in letters.randomElement()! })
    }
    
    func randomOtherEmojis(length: Int) -> String {
        let letters = Randomemoji
        return String((0..<length).map{ _ in letters.randomElement()! })
    }
    
    func randomASCII(length: Int) -> String {
        let letters: [Character] = ["!",",","#","$","%","&","'","(","*","+",",","-",".","/",":",";","<","=",">","?","@","[","]","0","1","2","3","4","5","6","7","8","9",":",";","<","=",">","?","@","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
        return String((0..<length).map{ _ in letters.randomElement()! })
    }
    
    @IBAction func copyBtn(_ sender: UIButton) {
        if resultTextView.text.isEmpty {
            self.showToast(message: "Please generate repeat..!", font: .systemFont(ofSize: 12.0),frame: CGRect(x: self.view.frame.size.width/2 - 90, y: self.view.frame.size.height-100, width: 200, height: 35))
        }else{
            UIPasteboard.general.string = resultTextView.text
            self.showToast(message: "Copy", font: .systemFont(ofSize: 12.0),frame: CGRect(x: self.view.frame.size.width/3, y: self.view.frame.size.height-100, width: 100, height: 35))
        }
    }
    
    @IBAction func shareBtn(_ sender: UIButton) {
        if resultTextView.text.isEmpty {
            self.showToast(message: "Please generate repeat..!", font: .systemFont(ofSize: 12.0),frame: CGRect(x: self.view.frame.size.width/2 - 90, y: self.view.frame.size.height-100, width: 200, height: 35))
        }else{
            let urlWhats = "whatsapp://send?&text=\(resultTextView.text!)"
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
