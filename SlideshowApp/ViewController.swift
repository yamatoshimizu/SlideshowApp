//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 清水大和 on 2020/07/05.
//  Copyright © 2020 Yamato Shimizu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var evolve: UIButton!

    @IBOutlet weak var deevolve: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    var timer : Timer!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewControler2: ViewController2 = segue.destination as! ViewController2
        viewControler2.imageNo = imageNumber
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let image = UIImage(named: "otamajacson.jpg")
        imageView.image = image
        }
    @objc func updateTimer(_ timer: Timer){
        if imageNumber < 2{
            imageNumber += 1
            slideShow()
        }
        else{
            imageNumber = 0
            slideShow()
        }
       
    }
    var imageNumber = 0
    let imageNameArray = ["otamajacson.jpg", "otamajyakuson2.png", "otamajyakuson3.png"]
    func slideShow(){
        let name = imageNameArray[imageNumber]
        let image = UIImage(named: name)
        imageView.image = image
        
        
    }
    
    @IBAction func evolve(_ sender: UIButton) {
        if imageNumber  < 2{
             imageNumber += 1
        }
        else{
            imageNumber = 0
        }
        slideShow()
    }
     @IBAction func degenerate(_ sender: Any) {
        if imageNumber == 0{
            imageNumber = 2
        }
        else{
            imageNumber -= 1
        }
        slideShow()
    }
    @IBAction func slideStart(_ sender: UIButton) {
        if timer == nil{
            self.timer = Timer.scheduledTimer(timeInterval: 1.5, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
            sender.setTitle("止める",for: .normal)
            evolve.isEnabled = false
            deevolve.isEnabled = false
            
        }
        else{
            self.timer.invalidate()
            self.timer = nil
            evolve.isEnabled = true
            deevolve.isEnabled = true
            sender.setTitle("見守る", for: .normal)
        }
    
    }
    
    @IBAction func tapImage(_ sender: Any) {
    }
    @IBAction func unwind(_ segue: UIStoryboardSegue){
        
    }
}

