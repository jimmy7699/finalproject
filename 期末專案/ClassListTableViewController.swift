//
//  ClassListTableViewController.swift
//  期末專案
//
//  Created by 邱錦華 on 2018/6/16.
//  Copyright © 2018年 jimmy. All rights reserved.
//

import UIKit

class ClassListTableViewController: UITableViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "classDetail", sender: indexPath)
    }
    var classList = [Course(name: " 大氣動力學", compulsory: "選修",professorName:"蔡富容", weekDay: "三", time: "9:20~12:05",classTime:["2","3","4"], content: "大氣的原理與動力理論"),Course(name: "數值分析", compulsory: "必修", professorName: "郭南榮", weekDay: "二", time: "9:20~12:05",classTime:["2","3","4"], content: "數值微分和積分-求解集方程組"),Course(name: "微積分", compulsory: "必修", professorName: "李宏仁", weekDay: "二", time: "9:20~12:05", classTime: ["2","3","4"], content: "微分和積分")]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.tableFooterView=UIView()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return classList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "classCell", for: indexPath) as! ClassTableViewCell
        let classname = classList[indexPath.row]
        cell.name.text=classname.name
    
        cell.professorName.text=classname.professorName
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
            controller?.name=classList[row].name
            controller?.com=classList[row].compulsory
            controller?.professorName=classList[row].professorName
            controller?.weekDay=classList[row].weekDay
            controller?.time=classList[row].time
            print(classList[row].content)
            controller?.contant=classList[row].content
            
        }
    }
    

}
