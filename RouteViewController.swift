//
//  RouteViewController.swift
//  ece564-2-DukeAdmissionRoute
//
//  Created by 陆清 on 10/29/19.
//  Copyright © 2019 Duke University. All rights reserved.
//

import UIKit

class RouteViewController: UIViewController,UITableViewDelegate {

    @IBOutlet weak var imageScroll: UIScrollView!
    
    @IBOutlet weak var RouteTable: UITableView!
    var pictures: [UIImage] =  [UIImage(named: "chapel")!, UIImage(named: "west_union")!, UIImage(named: "fitzpatrick")!,UIImage(named: "Arts")!]
    
//    var logo: [UIImage] = [UIImage(named: "pratt_logo")!, UIImage(named: "nicu_logo")!, UIImage(named: "medicine_logo")!,UIImage(named: "physics")!,UIImage(named: "tourist_logo")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        view.backgroundColor = UIColor.white
//        navigationController?.navigationBar.prefersLargeTitles = true
//        navigationItem.title = "Route"
        // Do any additional setup after loading the view.
        showImage()
    }
    
//    func showRoute(){
//        self.RouteTable.numberOfRows(inSection: self.logo.count)
//        let  numberofSection = self.RouteTable.numberOfSections
//
//    }
    
   
    
    
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
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
