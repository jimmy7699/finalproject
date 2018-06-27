//
//  ClassTableViewController.swift
//  期末專案
//
//  Created by 邱錦華 on 2018/6/16.
//  Copyright © 2018年 jimmy. All rights reserved.
//

import UIKit

class ClassTableViewController: UITableViewController {
    var userCourseList = [Course]()
    var courseDatial:Course?
    var name=""
    var com=""
    var time=""
    var weekDay=""
    var professorName=""
    var contant=""
 
    @IBAction func goBackToUserCourseTableView(_ sender: Any) {
          if let userCourseList = Course.readCoursesFromFile(){
            if userCourseList.count == 0 {
                performSegue(withIdentifier: "goBackToUserCourseTableViewWithSegue", sender: nil)
            }else{
            self.userCourseList = userCourseList
            for i in 0...userCourseList.count-1{
                let userWeekDay = userCourseList[i].weekDay
                if  weekDay == userWeekDay{
                    var classTime = userCourseList[i].classTime
                    if let classTimeDatial = courseDatial?.classTime{
                    for j in 0...classTime.count-1{
                        for k in 0...classTimeDatial.count-1{
                            if classTime[j] == classTimeDatial[k]{
                                let alertController = UIAlertController(title: "衝堂", message: "無法加選此課程", preferredStyle: .alert)
                                let action = UIAlertAction(title: "確定", style: .default, handler: nil)
                                alertController.addAction(action)
                                present(alertController, animated: true, completion: nil)
                                return
                             }
                           }
                        }
                    }
                }
            }
            performSegue(withIdentifier: "goBackToUserCourseTableViewWithSegue", sender: nil)
          }
        }
        
    }
    @IBOutlet weak var professorNameText: UILabel!
    @IBOutlet weak var nameText: UILabel!
    @IBOutlet weak var comText: UILabel!
    @IBOutlet weak var timeText: UILabel!
    @IBOutlet weak var weekDayText: UILabel!
    @IBOutlet weak var contantText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.tableFooterView=UIView()
        nameText.text=name
        comText.text=com
        professorNameText.text=professorName
        timeText.text=time
        contantText.text=contant
        weekDayText.text=weekDay
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    /*
    override func numberOfSections(in tableView: UITableView) -> Int {
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if courseDatial == nil{
            courseDatial = courseDatial!
        }
    }
    

}
