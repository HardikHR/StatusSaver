//
//  DirectChatViewController.swift
//  Status Saver
//
//  Created by macOS on 01/03/22.
//

import UIKit
import CountryPickerView
import ContactsUI
import MessageUI

class DirectChatViewController: UIViewController, UITextViewDelegate, UITextFieldDelegate,CountryPickerViewDelegate, CountryPickerViewDataSource, CNContactPickerDelegate, MFMessageComposeViewControllerDelegate{
    
    @IBOutlet weak var CountryPicker: CountryPickerView!
    @IBOutlet weak var phoneText: UITextField!
    @IBOutlet weak var messageText: UITextView!
    @IBOutlet weak var WhatsappButton: UIButton!
    @IBOutlet weak var SMSButton: UIButton!
    @IBOutlet var Message_Suggesion: [UIButton]!
    var countrycode = "+91"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Direct Chat"
        UIdesign()
        CountryPicker.setCountryByName("INDIA")
        CountryPicker.setCountryByCode("IN")
        CountryPicker.setCountryByPhoneCode("+91")
        messageText.delegate = self
        phoneText.delegate = self
        messageText.text = "Enter Message"
        messageText.textColor = UIColor.lightGray
        CountryPicker.delegate = self
        CountryPicker.dataSource = self
    }
    
    
    
    func countryPickerView(_ countryPickerView: CountryPickerView, didSelectCountry country: Country) {
        self.countrycode = country.phoneCode
        navigationController?.view.backgroundColor = .white
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        phoneText.becomeFirstResponder()
    }
    
    func contactPicker(_ picker: CNContactPickerViewController, didSelect contacts: [CNContact]) {
        contacts.forEach { contact in
            for number in contact.phoneNumbers {
                let phoneNumber = number.value
                phoneText.text = phoneNumber.stringValue
                print("number is = \(phoneNumber.stringValue)")
            }
        }
    }
    
    @IBAction func Mess_sugg(_ sender: UIButton) {
        if sender.tag == 1 {
            messageText.text = "Good Morning"
        } else if sender.tag == 2 {
            messageText.text = "Good Afternoon"
        } else if sender.tag == 3 {
            messageText.text = "Good Night"
        }else if sender.tag == 4 {
            messageText.text = "How are You?"
        }else if sender.tag == 5 {
            messageText.text = "Where are You?"
        }
    }
    
    @IBAction func getPhoneContact(_ sender: UIButton) {
        let cnPicker = CNContactPickerViewController()
        cnPicker.delegate = self
        self.present(cnPicker, animated: true, completion: nil)
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let allowedCharacters = CharacterSet.decimalDigits
        let characterSet = CharacterSet(charactersIn: string)
        return allowedCharacters.isSuperset(of: characterSet)
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if messageText.textColor == UIColor.lightGray {
            messageText.text = nil
            messageText.textColor = UIColor.black
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if messageText.text.isEmpty {
            messageText.text = "Enter Message"
            messageText.textColor = UIColor.lightGray
        }
    }
    
    @IBAction func whatsappMessage(_ sender: UIButton) {
        if (phoneText.text!.isEmpty || phoneText.text!.count < 10 || messageText.text.isEmpty) {
            phoneText.layer.borderColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
            messageText.layer.borderColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
            self.showToast(message: "Please enter 10 digit mobile number.", font: .systemFont(ofSize: 12.0),frame: CGRect(x: self.view.frame.size.width/2 - 90, y: self.view.frame.size.height-100, width: 200, height: 35))
        }else{
            messageText.layer.borderColor = #colorLiteral(red: 0.5411764706, green: 0.3882352941, blue: 1, alpha: 1)
            phoneText.layer.borderColor = #colorLiteral(red: 0.5411764706, green: 0.3882352941, blue: 1, alpha: 1)
            let urlWhats = "whatsapp://send?phone=\(self.countrycode)\(phoneText.text!)&text=\(messageText.text!)"
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
    
    @IBAction func smsMessage(_ sender: UIButton) {
        /*if (MFMessageComposeViewController.canSendText()) {
            let controller = MFMessageComposeViewController()
            controller.body = messageText.text
            controller.recipients = ([self.phoneText.text] as! [String])
            controller.messageComposeDelegate = self
            self.present(controller, animated:   true, completion: nil)
        }else {
            print("Can't send messages.")
        }*/
        guard let messageURL = NSURL(string: "sms:\(phoneText.text!)&body=\(messageText.text!)")
        else { return }
        if UIApplication.shared.canOpenURL(messageURL as URL) {
            UIApplication.shared.open(messageURL as URL)
        }
    }
    
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        switch (result) {
        case .cancelled:
            print("Message was cancelled")
        case .failed:
            print("Message failed")
        case .sent:
            print("Message was sent")
        default:
            return
        }
        dismiss(animated: true, completion: nil)
    }
}

