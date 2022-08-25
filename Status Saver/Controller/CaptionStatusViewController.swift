//
//  CaptionStatusViewController.swift
//  Status Saver
//
//  Created by macOS on 01/03/22.
//

import UIKit
import ScrollableSegmentedControl

class CaptionStatusViewController: UITableViewController,CAAnimationDelegate {
    
    @IBOutlet weak var itemsegment: ScrollableSegmentedControl!
    @IBOutlet var SegTableview: UITableView!
    var list = [quotes]()
    let cell = segmentCell()
    var selectedIndex = 0
    var category_id: Int!
    let sett = SettingViewController()
    var movieInfo: quotes!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Caption Status"
        segmentControll()
        SegTableview.reloadData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
       // list = DataBaseHelper.shared.fetch()
       /* if let id = category_id {
            DataBaseHelper.shared.loadMovie(withID: id, completionHandler: { (movie) in
                DispatchQueue.main.async {
                    if movie != nil {
                        self.movieInfo = movie
                        self.cell.captiontlbl.text = self.movieInfo.quote
                        self.SegTableview.reloadData()
                    }
                }
            })
        }*/
    }
    
    func setValue(){
        cell.captiontlbl.text = movieInfo.quote
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch itemsegment.selectedSegmentIndex {
        case 0:
            return quotes_Attitude.count
        case 1:
            return quotes_Dance.count
        case 2:
            return quotes_goodNight.count
        case 3:
            return quotes_GoodMorning .count
        case 4:
            return quotes_happiness.count
        case 5:
            return quotes_HeartTouchig.count
        case 6:
            return quotes_life.count
        case 7:
            return quote_love.count
        case 8:
            return quote_Motivational.count
        case 9:
            return quote_sad.count
        case 10:
            return quote_Breakup.count
        case 11:
            return quote_missYou.count
        case 12:
            return quote_sorry.count
        case 13:
            return quote_Work.count
        case 14:
            return quote_success.count
        case 15:
            return quote_smart.count
        case 16:
            return quote_single.count
        case 17:
            return quote_rain.count
        case 18:
            return quote_Best.count
        default:break
        }
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! segmentCell
        switch itemsegment.selectedSegmentIndex {
        case 0:
            cell.captiontlbl.text = quotes_Attitude[indexPath.row]
        case 1:
            cell.captiontlbl.text = quotes_Dance[indexPath.row]
        case 2:
            cell.captiontlbl.text = quotes_goodNight[indexPath.row]
        case 3:
            cell.captiontlbl.text = quotes_GoodMorning[indexPath.row]
        case 4:
            cell.captiontlbl.text = quotes_happiness[indexPath.row]
        case 5:
            cell.captiontlbl.text = quotes_happiness[indexPath.row]
        case 6:
            cell.captiontlbl.text = quotes_life[indexPath.row]
        case 7:
            cell.captiontlbl.text = quote_love[indexPath.row]
        case 8:
            cell.captiontlbl.text = quote_Motivational[indexPath.row]
        case 9:
            cell.captiontlbl.text = quote_sad[indexPath.row]
        case 10:
            cell.captiontlbl.text = quote_Breakup[indexPath.row]
        case 11:
             cell.captiontlbl.text = quote_missYou[indexPath.row]
        case 12:
            cell.captiontlbl.text = quote_sorry[indexPath.row]
        case 13:
            cell.captiontlbl.text = quote_Work[indexPath.row]
        case 14:
            cell.captiontlbl.text = quote_success[indexPath.row]
        case 15:
            cell.captiontlbl.text = quote_smart[indexPath.row]
        case 16:
            cell.captiontlbl.text = quote_single[indexPath.row]
        case 17:
            cell.captiontlbl.text = quote_rain[indexPath.row]
        case 18:
            cell.captiontlbl.text = quote_Best[indexPath.row]
        default:break
        }
        cell.layer.borderWidth = 0.5
        cell.layer.cornerRadius = 3
        cell.layer.shadowColor = UIColor.systemGray.cgColor
        cell.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        cell.layer.shadowRadius = 3
        cell.layer.masksToBounds = false
        cell.sendCaptionBtn.tag = indexPath.row
        cell.sendCaptionBtn.addTarget(self, action: #selector(sendCaption(sender:)), for: .touchUpInside)
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

    @objc func sendCaption(sender: UIButton){
        switch itemsegment.selectedSegmentIndex {
        case 0:
            sendCap(sender: sender, quots: quotes_Attitude)
        case 1:
            sendCap(sender: sender, quots: quotes_Dance)
        case 2:
            sendCap(sender: sender, quots: quotes_goodNight)
        case 3:
            sendCap(sender: sender, quots: quotes_GoodMorning)
        case 4:
            sendCap(sender: sender, quots: quotes_happiness)
        case 5:
            sendCap(sender: sender, quots: quotes_happiness)
        case 6:
            sendCap(sender: sender, quots: quotes_life)
        case 7:
            sendCap(sender: sender, quots: quote_love)
        case 8:
            sendCap(sender: sender, quots: quote_Motivational)
        case 9:
            sendCap(sender: sender, quots: quote_sad)
        case 10:
            sendCap(sender: sender, quots: quote_Breakup)
        case 11:
            sendCap(sender: sender, quots: quote_missYou)
        case 12:
            sendCap(sender: sender, quots: quote_sorry)
        case 13:
            sendCap(sender: sender, quots: quote_Work)
        case 14:
            sendCap(sender: sender, quots: quote_success)
        case 15:
            sendCap(sender: sender, quots: quote_smart)
        case 16:
            sendCap(sender: sender, quots: quote_single)
        case 17:
            sendCap(sender: sender, quots: quote_rain)
        case 18:
            sendCap(sender: sender, quots: quote_Best)
        default:break
        }
    }
    
     func sendCap(sender:UIButton,quots:[String]){
        selectedIndex = sender.tag
        let urlWhats = "whatsapp://send?&text=\(quots[selectedIndex])"
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
    
    @IBAction func indexChange(_ sender:ScrollableSegmentedControl) {
        self.tableView.reloadData()
    }
}
