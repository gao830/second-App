//
//  ViewController.swift
//  secondApp
//
//  Created by Bill Gao on 2016/12/24.
//  Copyright © 2016年 Bill Gao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scroll: UIScrollView!
    var images = [UIImageView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        for x in 0...2{
            let image = UIImage(named:"icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            var newX: CGFloat  = 0.0
            newX = view.frame.midX + view.frame.size.width * CGFloat(x)
            scroll.addSubview(imageView)
            imageView.frame = CGRect(x: newX-75, y: view.frame.size.height/2-75, width: 150, height: 150)
        }
        print("Count: \(images.count)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

