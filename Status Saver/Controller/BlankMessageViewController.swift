//
//  BlankMessageViewController.swift
//  Status Saver
//
//  Created by macOS on 01/03/22.
//

import UIKit
import DLRadioButton
import iOSDropDown

class BlankMessageViewController: UIViewController {
    
    @IBOutlet weak var RowRadioBtn: DLRadioButton!
    @IBOutlet weak var CharactersRadioBtn: DLRadioButton!
    @IBOutlet var sendLinkCheckBox: DLRadioButton!
    @IBOutlet weak var numberlbl: UILabel!
    @IBOutlet weak var numberListDropdown: DropDown!
    @IBOutlet weak var SendBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Blank Message"
        UIdesign()
        RowRadioBtn.isSelected = true
        numberListDropdown.optionArray = ["1","5","10","250","500","1000","2500","5000","10000"]
        numberListDropdown.didSelect{(selectedText , index ,id) in
            self.numberListDropdown.text = selectedText
            self.numberListDropdown.selectedRowColor = #colorLiteral(red: 0.5843137255, green: 0.4705882353, blue: 0, alpha: 1)
            self.numberListDropdown.showList()
            self.numberListDropdown.hideList()
            self.sendLinkCheckBox.isMultipleSelectionEnabled = true
            for radioButton in self.sendLinkCheckBox.otherButtons {
                radioButton.isSelected = true
            }
        }
    }
    
    func Makespace(length: Int) -> String {
        let letters = " "
        return String((0..<length).map{ _ in letters.randomElement()! })
    }
    
    /*func MakeCharSpace(length: Int) -> String {
     let letters = " "
     return String((0..<length).map{ _ in letters.randomElement()! })
     }*/
    
    @IBAction func sendBtn(_ sender: UIButton) {
        let num = Int(numberListDropdown.text!)
        if numberListDropdown.text == "" {
            self.showToast(message: "Please select digits.", font: .systemFont(ofSize: 12.0),frame: CGRect(x: self.view.frame.size.width/2 - 90, y: self.view.frame.size.height-100, width: 200, height: 35))
        }else{
            let urlWhats = "whatsapp://send?&text=\(Makespace(length: num!))"
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
    
    @IBAction func RowAndCharcters(_ sender: DLRadioButton) {
        if sender.tag == 1{
            numberlbl.text = "Number of rows:"
        }else{
            numberlbl.text = "Number of characters:"
        }
    }
}
