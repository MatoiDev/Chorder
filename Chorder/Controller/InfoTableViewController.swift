//
//  InfoTableViewController.swift
//  Chorder
//
//  Created by AppleWorm on 13.07.2022.
//

import UIKit

class InfoTableViewController: UITableViewController {

    
    @IBOutlet weak var gitHubSender: UIButton!
    @IBOutlet weak var telegramSender: UIButton!
    @IBOutlet weak var VKSender: UIButton!
    @IBOutlet weak var logoBlur: UIVisualEffectView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        logoBlur.alpha = 1
        logoBlur.isOpaque = false
    
    }

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIView.animate(withDuration: 0.7) {
            self.logoBlur.alpha = 0
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        UIView.animate(withDuration: 0.1) {
            self.logoBlur.alpha = 1
        }
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        default:
            return 2
        }
    }

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
    @IBAction func goBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func goTo(_ sender: UIButton) {
        let VKURL = URL(string: "https://vk.com/f4ther_of_all")!
        let GitHubURL = URL(string: "https://github.com/MatoiDev/Chorder")!
        let TelegramURL = URL(string: "https://t.me/Uncle_Milty")!
        
        if sender == VKSender {
            UIApplication.shared.open(VKURL, options: [:], completionHandler: nil)
        } else if sender == telegramSender {
            UIApplication.shared.open(TelegramURL, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.open(GitHubURL, options: [:], completionHandler: nil)
        }
    }
    
}
