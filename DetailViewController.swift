//
//  DetailViewController.swift
//  ece564-2-DukeAdmissionRoute
//
//  Created by 裴紫琦 on 10/31/19.
//  Copyright © 2019 Duke University. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var picture: UIImageView!
    @IBOutlet weak var introduction_label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.introduction_label.contentMode = .scaleToFill
        self.introduction_label.numberOfLines = 0
        //label.font = UIFont(name: label.font.fontName, size: 20)
        self.introduction_label.font = UIFont(name: "Arial", size: 20)
        self.introduction_label.text? = "Constructed from 1930 to 1932, the Chapel seats about 1,800 people and stands 210 feet (64 m) tall, making it one of the tallest buildings in Durham County. It is built in the Collegiate Gothic style, characterized by its large stones, pointed arches, and ribbed vaults."
        
        
        self.picture?.image = UIImage(named: "chapel")
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
