//
//  ProfessorListTableViewController.swift
//  期末專案
//
//  Created by 邱錦華 on 2018/6/16.
//  Copyright © 2018年 jimmy. All rights reserved.
//

import UIKit

class ProfessorListTableViewController: UITableViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "professorDetail", sender: indexPath)
    }
    var professorList = [Professor(image:"蔡政翰",name:"蔡政翰",education:"美國佛羅里達大學(UF)博士",expertise:"潮汐、颱風波浪",researchTopics:"臺灣的潮汐、颱風波浪", email:"chtsai@mail.ntou.edu.tw"),Professor(image: "郭南榮", name: "郭南榮", education: "美國德拉瓦大學博士", expertise: "衛星海洋學", researchTopics: "衛星海洋學", email: "c0021@mail.ntou.edu.tw"),Professor(image: "梁興杰", name: "梁興杰", education: "美國佛羅理達大學博士", expertise: "水資訊學、空間資訊", researchTopics: "計算方法、計算流力", email: "sjliang@mail.ntou.edu.tw"),Professor(image: "何宗儒", name: "何宗儒", education: "美國德拉瓦大學博士", expertise: " 環境遙測、海洋物理", researchTopics: "南海內波、海洋氣候變遷", email: "b0211@mail.ntou.edu.tw"),Professor(image: "蔡富容", name: "蔡富容", education: "紐約州立大學奧本尼博士", expertise: "環境變遷分析", researchTopics: "大氣化學模擬分析", email: "fujung@mail.ntou.edu.tw")]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.tableFooterView=UIView()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
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
        return professorList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "professorCell", for: indexPath) as! ProfessorTableViewCell
        let professor = professorList[indexPath.row]
        cell.name.text=professor.name
        cell.professorImage.image=UIImage(named: professor.image)
       

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
        let controller = segue.destination as? ProfessorTableViewController
        let indexPath = sender as? IndexPath
        if let row = indexPath?.row {
            controller?.imagetext=professorList[row].image
            controller?.nametext=professorList[row].name
            controller?.expertisetext=professorList[row].expertise
            controller?.educationtext=professorList[row].education
            controller?.researchTopicstext=professorList[row].researchTopics
            controller?.emailtext=professorList[row].email
    }
    }

}
