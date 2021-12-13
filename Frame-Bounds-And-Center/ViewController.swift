//
//  ViewController.swift
//  Frame-Bounds-And-Center
//
//  Created by Omid Heydarzadeh on 12/13/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Tip : Coordinates ( x:0, y:0 ) In place Top Left . (By Default - Always)
        
        // Create Big Box
        
        let box = UIView(frame: CGRect(x: 20,
                                       y: 20,
                                       width: 100,
                                       height: 200))
        box.backgroundColor = UIColor.red
        view.addSubview(box)
        
        box.center = CGPoint(x: 169, y: 276)   // in this line, Meaning of Center is : Center of Box.
        
        // Create Small Box
        
        let smallBox = UIView(frame: CGRect(x: 0,
                                            y: 0,
                                            width: 20,
                                            height: 20))
        smallBox.backgroundColor = UIColor.black
        box.addSubview(smallBox)
        
        print(box.frame)
        print(box.bounds)
        
        smallBox.center.x = box.bounds.width / 2
        smallBox.center.y = box.bounds.height / 2
    }


}

