//
//  TableViewController.swift
//  點選cell播放音樂，影片或網頁
//
//  Created by 林仲景 on 2023/5/16.
//

import UIKit
import SafariServices

class TableViewController: UITableViewController {
    let 洪安妮Songs = [
        Song(songName: "一年後的故事", url: "https://www.youtube.com/watch?v=ERnZyNUHGRo"),
        Song(songName: "好好", url: "https://www.youtube.com/watch?v=g88C1SsQUP8"),
        Song(songName: "你會在我這邊停留多久", url: "https://www.youtube.com/watch?v=gwLMmfOBiFo"),
        Song(songName: "我喜歡你", url: "https://www.youtube.com/watch?v=aDSf3QoK3uQ")
    ]
    
    
    let 林昱君Songs = [
        Song(songName: "偶爾會想你(也就偶爾而已)", url: "https://www.youtube.com/watch?v=ADosFiePmq8"),
        Song(songName: "閉上眼睛", url: "https://www.youtube.com/watch?v=lCcUcMfuyTk"),
        Song(songName: "愛在比佛利 Love In Beverly", url: "https://www.youtube.com/watch?v=gqOt8i4Iy7U"),
        Song(songName: "我討厭台北的天氣 Lone Stay", url: "https://www.youtube.com/channel/UCq3mg2KQNxhY_EAszWsEx8Q")
    ]
    
    @IBOutlet var 洪安妮ImageViews: [UIImageView]!
    @IBOutlet var 洪安妮SongLabels: [UILabel]!
    @IBOutlet var 林昱君ImageView: [UIImageView]!
    @IBOutlet var 林昱君SongLabels: [UILabel]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for (i,song) in 洪安妮Songs.enumerated(){
            洪安妮ImageViews[i].image = UIImage(named: song.songName)
            洪安妮ImageViews[i].contentMode = .scaleToFill
            洪安妮SongLabels[i].text = song.songName
        }
        for (i, song) in 林昱君Songs.enumerated(){
            林昱君ImageView[i].image = UIImage(named: song.songName)
            林昱君ImageView[i].contentMode = .scaleToFill
            林昱君SongLabels[i].text = song.songName
        }
    }

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0{
            guard let url = URL(string: 洪安妮Songs[indexPath.row].url)else{return}
            let controller = SFSafariViewController(url: url)
            present(controller, animated: true)
        }else{
            guard let url = URL(string: 林昱君Songs[indexPath.row].url)else{return}
            let controller = SFSafariViewController(url: url)
            present(controller, animated: true)
        }
    }
    
    
    // MARK: - Table view data source

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
