//
//  ProfessorTableViewController.swift
//  期末專案
//
//  Created by 邱錦華 on 2018/6/16.
//  Copyright © 2018年 jimmy. All rights reserved.
//

import UIKit

class ProfessorTableViewController: UITableViewController {
    var emailtext=""
    var researchTopicstext=""
    var expertisetext=""
    var educationtext=""
    var nametext=""
    var imagetext=""
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var researchTopics: UILabel!
    @IBOutlet weak var expertise: UILabel!
    @IBOutlet weak var education: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var professorImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        professorImage.image = UIImage(named: imagetext)
        name.text=nametext
        education.text=educationtext
        expertise.text=expertisetext
        researchTopics.text=researchTopicstext
        email.text=emailtext
        self.tableView.tableFooterView=UIView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

   /* override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }*/

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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
