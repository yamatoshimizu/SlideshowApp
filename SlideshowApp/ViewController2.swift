//
//  ViewController2.swift
//  SlideshowApp
//
//  Created by 清水大和 on 2020/07/05.
//  Copyright © 2020 Yamato Shimizu. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var bigImage: UIImageView!
    @IBOutlet weak var characterName: UILabel!
    @IBOutlet weak var exprainText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayImage()

        // Do any additional setup after loading the view.
    }
   
    var imageNo = 0
    let imageArray = ["otamajacson.jpg", "otamajyakuson2.png", "otamajyakuson3.png"]
    let nameArray = ["オタマジャ","オタマジャン","オタマジャクソン"]
    let exprainArray = ["かわいいオタマジャクシ。","手足が生えた。","立った。"]
    func displayImage(){
        let name = self.imageArray[imageNo]
        let image = UIImage(named: name)
        bigImage.image = image
        characterName.text = "名前　 " + nameArray[imageNo]
        exprainText.text = exprainArray[imageNo]
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
