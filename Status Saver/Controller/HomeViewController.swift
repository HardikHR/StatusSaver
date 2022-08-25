//
//  ViewController.swift
//  Status Saver
//
//  Created by macOS on 01/03/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var ItemCollectionView: UICollectionView!
    var menu: [Items] = [
        Items(icon: UIImage(named: "chat")!, title: "Direct Chat"),
        Items(icon: UIImage(named: "magic_font")!, title: "Magic Font"),
        Items(icon: UIImage(named: "message")!, title: "Blank Message"),
        Items(icon: UIImage(named: "repeat")!, title: "Text Repeater"),
        Items(icon: UIImage(named: "font_style")!, title: "Text Style"),
        Items(icon: UIImage(named: "caption")!, title: "Caption Status"),
        Items(icon: UIImage(named: "emoji")!, title: "Random Text"),
        Items(icon: UIImage(named: "emoji")!, title: "Text to Emoji")
    ]
        
    override func  viewDidLoad() {
        super.viewDidLoad()
    }
}

extension HomeViewController:UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menu.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier.cellidentifier, for: indexPath) as! ItemCollectionViewCell
        cell.item_icon.image = menu[indexPath.row].icon
        cell.item_title.text = menu[indexPath.row].title
        cell.layer.borderColor = UIColor.gray.cgColor
        cell.layer.borderWidth = 0.5
        cell.layer.cornerRadius = 18
        cell.layer.shadowColor = UIColor.black.cgColor
        cell.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        cell.layer.shadowRadius = 3
        cell.layer.shadowOpacity = 0.5
        cell.layer.masksToBounds = false
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let flowayout = collectionViewLayout as? UICollectionViewFlowLayout
        let space: CGFloat = (flowayout?.minimumInteritemSpacing ?? 0.0) + (flowayout?.sectionInset.left ?? 0.0) + (flowayout?.sectionInset.right ?? 0.0)
        let size:CGFloat = (ItemCollectionView.frame.size.width - space) / 2.0
        return CGSize(width: size, height: 170)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        if indexPath.item == 0 {
            let DirectChat = storyBoard.instantiateViewController(withIdentifier: "DirectChatViewController") as! DirectChatViewController
            self.navigationController?.pushViewController(DirectChat, animated: true)
        } else  if indexPath.item == 1 {
            let DirectChat = storyBoard.instantiateViewController(withIdentifier: "MagicFontViewController") as! MagicFontViewController
            self.navigationController?.pushViewController(DirectChat, animated: true)
        }else  if indexPath.item == 2 {
            let DirectChat = storyBoard.instantiateViewController(withIdentifier: "BlankMessageViewController") as! BlankMessageViewController
            self.navigationController?.pushViewController(DirectChat, animated: true)
        }else  if indexPath.item == 3 {
            let DirectChat = storyBoard.instantiateViewController(withIdentifier: "TextRepeaterViewController") as! TextRepeaterViewController
            self.navigationController?.pushViewController(DirectChat, animated: true)
        }else  if indexPath.item == 4 {
            let DirectChat = storyBoard.instantiateViewController(withIdentifier: "TextStyleViewController") as! TextStyleViewController
            self.navigationController?.pushViewController(DirectChat, animated: true)
        }else  if indexPath.item == 5 {
            let DirectChat = storyBoard.instantiateViewController(withIdentifier: "CaptionStatusViewController") as! CaptionStatusViewController
            self.navigationController?.pushViewController(DirectChat, animated: true)
        }else  if indexPath.item == 6 {
            let DirectChat = storyBoard.instantiateViewController(withIdentifier: "RandomTextViewController") as! RandomTextViewController
            self.navigationController?.pushViewController(DirectChat, animated: true)
        }else  if indexPath.item == 7 {
            let DirectChat = storyBoard.instantiateViewController(withIdentifier: "TextToEmojiViewController") as! TextToEmojiViewController
            self.navigationController?.pushViewController(DirectChat, animated: true)
        }
    }
}
