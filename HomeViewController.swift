//
//  HomeViewController.swift
//  ece564-2-DukeAdmissionRoute
//
//  Created by 陆清 on 11/2/19.
//  Copyright © 2019 Duke University. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var BuildingImage: UIScrollView!
    var pictures: [UIImage] =  [UIImage(named: "chapel")!, UIImage(named: "west_union")!, UIImage(named: "fitzpatrick")!,UIImage(named: "Arts")!]
    override func viewDidLoad() {
        super.viewDidLoad()

        showImage()
        // Do any additional setup after loading the view.
    }
    
    func showImage(){
        //imageScroll.frame = view.frame
        for i  in 0..<pictures.count{
            let imageView = UIImageView()
            imageView.image = pictures[i]
            imageView.contentMode = .scaleAspectFit
            let xPosition = self.BuildingImage.frame.width*CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0, width: self.BuildingImage.frame.width, height: self.BuildingImage.frame.height)
            self.BuildingImage.contentSize.width = self.BuildingImage.frame.width*CGFloat(i+1)
            self.BuildingImage.addSubview(imageView)
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
