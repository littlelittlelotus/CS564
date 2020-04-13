//
//  RouteTableViewController.swift
//  ece564-2-DukeAdmissionRoute
//
//  Created by 陆清 on 10/30/19.
//  Copyright © 2019 Duke University. All rights reserved.
//

import UIKit

class RouteTableViewController: UITableViewController {

    @IBOutlet weak var imageScroll: UIScrollView!
    
    var pictures: [UIImage] =  [UIImage(named: "chapel")!, UIImage(named: "west_union")!, UIImage(named: "fitzpatrick")!,UIImage(named: "Arts")!]
//    var startLabel: [String] = ["Duke University Hospital","Erwin","Brain Center","Fitzpatrick Center","Duke University Chapel"]
//    var endLabel: [String] = ["Duke Wellness Center","Nicholas School","Physics Building","Bostock Library","Sarah P. Duke Gardens"]
//    var departmentLabel: [String] = ["Medicine","Nicholas","Physics","Pratt","Tourist"]
//    var logoPicture: [UIImage] = [UIImage(named: "medicine_logo")!, UIImage(named: "nicu_logo")!, UIImage(named: "physics_logo")!,UIImage(named: "pratt_logo")!,UIImage(named: "tourist_logo")!]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        showImage()
    }
    func showImage(){
        //imageScroll.frame = view.frame
        for i  in 0..<pictures.count{
            let imageView = UIImageView()
            imageView.image = pictures[i]
            imageView.contentMode = .scaleAspectFit
            let xPosition = self.imageScroll.frame.width*CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0, width: self.imageScroll.frame.width, height: self.imageScroll.frame.height)
            imageScroll.contentSize.width = imageScroll.frame.width*CGFloat(i+1)
            imageScroll.addSubview(imageView)
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 1
//    }

    
    
    
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "routeCell", for: indexPath) as! routeTableViewCell
//        cell.logoImage?.image = self.logoPicture[indexPath.row]
//        // Configure the cell...
//
//        return cell
//    }
    

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
