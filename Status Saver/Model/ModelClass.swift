//
//  ModelClass.swift
//  Status Saver
//
//  Created by macOS on 01/03/22.
//

import Foundation
import UIKit
import ScrollableSegmentedControl

struct identifier {
    static let cellidentifier = "itemCell"
}

struct quotes {
    let _id:Int
    let category_id:Int
    let quote:String
}

struct Items {
    var icon: UIImage
    var title: String
}


extension UIButton{
    @discardableResult func makeButtonDesign(type:UIButton,corner:CGFloat, borderWidth:CGFloat, borderColor:CGColor, maskTobond:Bool) -> UIButton{
        type.layer.cornerRadius = corner
        type.layer.borderWidth = borderWidth
        type.layer.borderColor = borderColor
        type.layer.masksToBounds = maskTobond
        return type
    }
}

extension UITextField{
    @discardableResult func makeTextfieldDesign(type:UITextField,corner:CGFloat, borderWidth:CGFloat, borderColor:CGColor, maskTobond:Bool) -> UITextField{
        type.layer.cornerRadius = corner
        type.layer.borderWidth = borderWidth
        type.layer.borderColor = borderColor
        type.layer.masksToBounds = maskTobond
        return type
    }
}

extension UITextView{
    @discardableResult func makeTextViewDesign(type:UITextView,corner:CGFloat, borderWidth:CGFloat, borderColor:CGColor, maskTobond:Bool) -> UITextView{
        type.layer.cornerRadius = corner
        type.layer.borderWidth = borderWidth
        type.layer.borderColor = borderColor
        type.layer.masksToBounds = maskTobond
        return type
    }
}

let item = ["Attitude","Dance","Good Night","Good Morning","Happiness","Heart Touching", "Life","Love","Motivational","Sad","Breakup","Miss You", "Sorry","Work", "Success","Smart","Single","Rain","Best"]

extension DirectChatViewController {
    func UIdesign(){
        navigationController?.view.backgroundColor = .white
        WhatsappButton.makeButtonDesign(type: WhatsappButton, corner: 5, borderWidth: 1.0, borderColor: #colorLiteral(red: 0.5411764706, green: 0.3882352941, blue: 1, alpha: 1), maskTobond: true)
        SMSButton.makeButtonDesign(type: SMSButton, corner: 5, borderWidth: 1.0, borderColor: #colorLiteral(red: 0.5411764706, green: 0.3882352941, blue: 1, alpha: 1), maskTobond: true)
        messageText.makeTextViewDesign(type: messageText, corner: 5, borderWidth: 1.0, borderColor: #colorLiteral(red: 0.5411764706, green: 0.3882352941, blue: 1, alpha: 1), maskTobond: true)
        phoneText.makeTextfieldDesign(type: phoneText, corner: 5, borderWidth: 1.0, borderColor: #colorLiteral(red: 0.5411764706, green: 0.3882352941, blue: 1, alpha: 1), maskTobond: true)
    }
}

extension MagicFontViewController{
    func UIdesign(){
        NameText.makeTextfieldDesign(type: NameText, corner: 5, borderWidth: 1.0, borderColor: #colorLiteral(red: 0.1920504852, green: 0.6852257092, blue: 0.1518086473, alpha: 1), maskTobond: true)
        EmojiAndText.makeTextfieldDesign(type: EmojiAndText, corner: 5, borderWidth: 1.0, borderColor: #colorLiteral(red: 0.1920504852, green: 0.6852257092, blue: 0.1518086473, alpha: 1), maskTobond: true)
        resetButton.makeButtonDesign(type: resetButton, corner: 5, borderWidth: 1.0, borderColor: #colorLiteral(red: 0.1920504852, green: 0.6852257092, blue: 0.1518086473, alpha: 1), maskTobond: true)
        GenerateButton.makeButtonDesign(type: GenerateButton, corner: 5, borderWidth: 1.0, borderColor: #colorLiteral(red: 0.1920504852, green: 0.6852257092, blue: 0.1518086473, alpha: 1), maskTobond: true)
        ResultTxtView.makeTextViewDesign(type: ResultTxtView, corner: 5, borderWidth: 1.0, borderColor: #colorLiteral(red: 0.1920504852, green: 0.6852257092, blue: 0.1518086473, alpha: 1), maskTobond: true)
    }
}

extension BlankMessageViewController {
    func UIdesign(){
        numberListDropdown.makeTextfieldDesign(type: numberListDropdown, corner: 5, borderWidth: 1.0, borderColor: #colorLiteral(red: 0.5529411765, green: 0.4274509804, blue: 0.03529411765, alpha: 1), maskTobond: true)
        SendBtn.makeButtonDesign(type: SendBtn, corner: 5, borderWidth: 1.0, borderColor: #colorLiteral(red: 0.5529411765, green: 0.4274509804, blue: 0.03529411765, alpha: 1), maskTobond: true)
    }
}

extension TextRepeaterViewController {
    func UIdesign(){
        messageTxt.makeTextfieldDesign(type: messageTxt, corner: 5, borderWidth: 1.0, borderColor: #colorLiteral(red: 0.1254901961, green: 0.3647058824, blue: 0.7568627451, alpha: 1), maskTobond: true)
        repeatCount.makeTextfieldDesign(type: repeatCount, corner: 5, borderWidth: 1.0, borderColor: #colorLiteral(red: 0.1254901961, green: 0.3647058824, blue: 0.7568627451, alpha: 1), maskTobond: true)
        resetBtn.makeButtonDesign(type: resetBtn, corner: 5, borderWidth: 1.0, borderColor: #colorLiteral(red: 0.1254901961, green: 0.3647058824, blue: 0.7568627451, alpha: 1), maskTobond: true)
        generateBtn.makeButtonDesign(type: generateBtn, corner: 5, borderWidth: 1.0, borderColor: #colorLiteral(red: 0.1254901961, green: 0.3647058824, blue: 0.7568627451, alpha: 1), maskTobond: true)
        resultTxtView.makeTextViewDesign(type: resultTxtView, corner: 5, borderWidth: 1.0, borderColor: #colorLiteral(red: 0.1254901961, green: 0.3647058824, blue: 0.7568627451, alpha: 1), maskTobond: true)
    }
}

extension TextStyleViewController{
   
    func UIdesign(){
        resultTxtView.makeTextViewDesign(type: resultTxtView, corner: 5, borderWidth: 1.0, borderColor: #colorLiteral(red: 1, green: 0.4823529412, blue: 0.662745098, alpha: 1), maskTobond: true)
        fontTxt.makeTextfieldDesign(type:fontTxt, corner: 5, borderWidth: 1.0, borderColor: #colorLiteral(red: 1, green: 0.4823529412, blue: 0.662745098, alpha: 1), maskTobond: true)
        textMessage.makeTextViewDesign(type: textMessage, corner: 5, borderWidth: 1.0, borderColor: #colorLiteral(red: 1, green: 0.4823529412, blue: 0.662745098, alpha: 1), maskTobond: true)
    }
}

extension RandomTextViewController{
    
    func UIdesign(){
        RepeatCountTxt.makeTextfieldDesign(type: RepeatCountTxt, corner: 5, borderWidth: 1.0, borderColor: #colorLiteral(red: 0.3411764706, green: 0.262745098, blue: 0.6470588235, alpha: 1), maskTobond: true)
        resetBtn.makeButtonDesign(type: resetBtn, corner: 5, borderWidth: 1.0, borderColor: #colorLiteral(red: 0.3411764706, green: 0.262745098, blue: 0.6470588235, alpha: 1), maskTobond: true)
        generateBtn.makeButtonDesign(type: generateBtn, corner: 5, borderWidth: 1.0, borderColor: #colorLiteral(red: 0.3411764706, green: 0.262745098, blue: 0.6470588235, alpha: 1), maskTobond: true)
        resultTextView.makeTextViewDesign(type: resultTextView, corner: 5, borderWidth: 1.0, borderColor: #colorLiteral(red: 0.3411764706, green: 0.262745098, blue: 0.6470588235, alpha: 1), maskTobond: true)
    }
}

extension TextToEmojiViewController{
   
    func UIdesign(){
        messageTxt.makeTextfieldDesign(type: messageTxt, corner: 5, borderWidth: 1.0, borderColor: #colorLiteral(red: 0.6862745098, green: 0.2705882353, blue: 0.7450980392, alpha: 1), maskTobond: true)
        resetBtn.makeButtonDesign(type: resetBtn, corner: 5, borderWidth: 1.0, borderColor: #colorLiteral(red: 0.6862745098, green: 0.2705882353, blue: 0.7450980392, alpha: 1), maskTobond: true)
        generateBtn.makeButtonDesign(type: generateBtn, corner: 5, borderWidth: 1.0, borderColor: #colorLiteral(red: 0.6862745098, green: 0.2705882353, blue: 0.7450980392, alpha: 1), maskTobond: true)
        resultTextview.makeTextViewDesign(type: resultTextview, corner: 5, borderWidth: 1.0, borderColor: #colorLiteral(red: 0.6862745098, green: 0.2705882353, blue: 0.7450980392, alpha: 1), maskTobond: true)
    }
}

extension CaptionStatusViewController{
    
    func segmentControll(){
        itemsegment.segmentStyle = .textOnly
        itemsegment.insertSegment(withTitle: item[0], at: 0)
        itemsegment.insertSegment(withTitle: item[1], at: 1)
        itemsegment.insertSegment(withTitle: item[2], at: 2)
        itemsegment.insertSegment(withTitle: item[3], at: 3)
        itemsegment.insertSegment(withTitle: item[4], at: 4)
        itemsegment.insertSegment(withTitle: item[5], at: 5)
        itemsegment.insertSegment(withTitle: item[6], at: 6)
        itemsegment.insertSegment(withTitle: item[7], at: 7)
        itemsegment.insertSegment(withTitle: item[8], at: 8)
        itemsegment.insertSegment(withTitle: item[9], at: 9)
        itemsegment.insertSegment(withTitle: item[10], at: 10)
        itemsegment.insertSegment(withTitle: item[11], at: 11)
        itemsegment.insertSegment(withTitle: item[12], at: 12)
        itemsegment.insertSegment(withTitle: item[13], at: 13)
        itemsegment.insertSegment(withTitle: item[14], at: 14)
        itemsegment.insertSegment(withTitle: item[15], at: 15)
        itemsegment.insertSegment(withTitle: item[16], at: 16)
        itemsegment.insertSegment(withTitle: item[17], at: 17)
        itemsegment.insertSegment(withTitle: item[18], at: 18)

        itemsegment.underlineSelected = true
        itemsegment.selectedSegmentIndex = 0
        //itemsegment.addTarget(self, action: #selector(CaptionStatusViewController.segmentSelected(sender:)), for: .valueChanged)
    }
}

extension UIViewController {
    func showToast(message : String, font: UIFont, frame:CGRect) {
        let toastLabel = UILabel(frame: frame)
        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        toastLabel.textColor = UIColor.white
        toastLabel.font = font
        toastLabel.textAlignment = .center
        toastLabel.text = message
        toastLabel.layer.cornerRadius = 10
        toastLabel.clipsToBounds  =  true
        self.view.addSubview(toastLabel)
        UIView.animate(withDuration: 2, delay: 1, options: .curveEaseOut, animations: {toastLabel.alpha = 0.0}, completion: {(isCompleted) in
            toastLabel.removeFromSuperview()
        })
        //CGRect(x: self.view.frame.size.width/2 - 90, y: self.view.frame.size.height-100, width: 200, height: 35)
    }
}
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
extension String {
    func onlyEmoji() -> String {
        return self.filter({$0.isEmoji})
    }
}
extension Character {
    var isEmoji: Bool {
        guard let scalar = unicodeScalars.first else { return false }
        return scalar.properties.isEmoji && (scalar.value > 0x238C || unicodeScalars.count > 1)
    }
}
