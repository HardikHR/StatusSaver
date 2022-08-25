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
        Items(icon: UIImage(systemName: "captions.bubble.fill")!, title: "Direct Chat"),
        Items(icon: UIImage(systemName: "textformat.alt")!, title: "Magic Font"),
        Items(icon: UIImage(systemName: "message.circle.fill")!, title: "Blank Message"),
        Items(icon: UIImage(systemName: "repeat")!, title: "Text Repeater"),
        Items(icon: UIImage(systemName: "f.cursive")!, title: "Text Style"),
        Items(icon: UIImage(systemName: "repeat")!, title: "Caption Status"),
        Items(icon: UIImage(systemName: "f.cursive")!, title: "Random Text"),
        Items(icon: UIImage(systemName: "repeat")!, title: "Text to Emoji")
    ]
    
    override func viewDidLoad() {
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
        cell.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        cell.layer.shadowRadius = 4
        cell.layer.shadowOpacity = 2
        cell.layer.masksToBounds = false
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let flowayout = collectionViewLayout as? UICollectionViewFlowLayout
        let space: CGFloat = (flowayout?.minimumInteritemSpacing ?? 0.0) + (flowayout?.sectionInset.left ?? 0.0) + (flowayout?.sectionInset.right ?? 0.0)
        let size:CGFloat = (ItemCollectionView.frame.size.width - space) / 2.0
        return CGSize(width: size, height: 170)
    }
}

