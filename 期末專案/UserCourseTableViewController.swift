//
//  UserCourseTableViewController.swift
//  期末專案
//
//  Created by 邱錦華 on 2018/6/23.
//  Copyright © 2018年 jimmy. All rights reserved.
//

import UIKit

class UserCourseTableViewController: UITableViewController {
    var UserCourseList = [Course]()
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "userCourseDatial", sender: indexPath)
    }
    
     @IBAction func goBackToUserCourseTableView(segue: UIStoryboardSegue){
        let controller = segue.source as? ClassTableViewController
        if let courseDatial = controller?.courseDatial{
            UserCourseList.insert(courseDatial, at: 0)
            Course.saveToFile(courses: UserCourseList)
            tableView.reloadData()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        if let UserCourseList = Course.readCoursesFromFile(){
            self.UserCourseList = UserCourseList
        }
        self.tableView.tableFooterView=UIView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        let alertController = UIAlertController(title: "退選", message: "確定要退選此課程嗎？", preferredStyle: .alert)
        let action = UIAlertAction(title: "確定", style: .default, handler:{(action:UIAlertAction!)-> Void in
            self.UserCourseList.remove(at: indexPath.row)
            Course.saveToFile(courses: self.UserCourseList)
            tableView.reloadData()
        })
        let action2 = UIAlertAction(title: "取消", style: .default, handler: nil)
        alertController.addAction(action)
        alertController.addAction(action2)
        present(alertController, animated: true, completion: nil)
        
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return UserCourseList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCourseList", for: indexPath) as! UserCourseTableViewCell
        let classname = UserCourseList[indexPath.row]
        cell.nameText.text=classname.name
        cell.Time.text=classname.time
        cell.weekDayText.text=classname.weekDay
        cell.compulsoryText.text=classname.compulsory
       

        return cell
    }
    
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
        let controller = segue.destination as? ClassTableViewController
        let indexPath = sender as? IndexPath
        if let row = indexPath?.row {
            controller?.name=UserCourseList[row].name
            controller?.com=UserCourseList[row].compulsory
            controller?.professorName=UserCourseList[row].professorName
            controller?.weekDay=UserCourseList[row].weekDay
            controller?.time=UserCourseList[row].time
            controller?.contant=UserCourseList[row].content
        }
        
    }
    

}
