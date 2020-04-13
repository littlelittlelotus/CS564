//
//  Route2TableViewController.swift
//  ece564-2-DukeAdmissionRoute
//
//  Created by 陆清 on 11/2/19.
//  Copyright © 2019 Duke University. All rights reserved.
//

import UIKit

class Route2TableViewController: UITableViewController {

    var logoPicture: [UIImage] = [UIImage(named: "medicine_logo")!, UIImage(named: "nicu_logo")!, UIImage(named: "physics_logo")!,UIImage(named: "pratt_logo")!,UIImage(named: "fuqua_logo")!,UIImage(named: "tourist_logo")!]
    
    var buildingPicture: [UIImage] = [UIImage(named: "medicine_building")!, UIImage(named: "nicholas_building")!, UIImage(named: "physics_building")!,UIImage(named: "pratt_building")!,UIImage(named: "fuqua_building")!,UIImage(named: "tourist_building")!]
    var nameText: [String] = ["Medicine","Nicholas","Physics","Pratt","Fuqua","Tourist"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        tableView.rowHeight = 135
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        setupNav()
    }

    func setupNav(){
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.buildingPicture.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "routeCell2", for: indexPath) as! route2TableViewCell
        cell.buildImage?.image = self.buildingPicture[indexPath.row]
        cell.logoImage?.image = self.logoPicture[indexPath.row]
        cell.nameLabel?.text = self.nameText[indexPath.row]

        // Configure the cell...

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
