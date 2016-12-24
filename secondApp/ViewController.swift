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
        
        
    }
    override func viewDidAppear(_ animated: Bool) {
        var contentWidth: CGFloat = 0.0
        // Do any additional setup after loading the view, typically from a nib.
        let scrollWidth = scroll.frame.size.width
        for x in 0...2{
            let image = UIImage(named:"icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            var newX: CGFloat  = 0.0
            newX = scrollWidth / 2 + scrollWidth * CGFloat(x)
            contentWidth += scrollWidth * CGFloat(x)
            scroll.addSubview(imageView)
            imageView.frame = CGRect(x: newX-75, y: scroll.frame.size.height/2-75, width: 150, height: 150)
        }
        scroll.clipsToBounds = false
        scroll.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

