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
    let MAX_SWIPE = 2
    let MIN_SWIPE = 0
    var current_swipe = 0
    
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

    @IBAction func swipeAction(_ sender: UISwipeGestureRecognizer) {
        if (current_swipe < MAX_SWIPE && sender.direction == UISwipeGestureRecognizerDirection.left) {
            print("left")
            didSwipe(location: 1)
            
        }
        
        if (current_swipe > MIN_SWIPE && sender.direction == UISwipeGestureRecognizerDirection.right) {
            print("right")
            didSwipe(location: -1)
            
        }
    }
    
    func didSwipe(location: Int) {
        current_swipe = current_swipe + location
        let point: CGPoint = CGPoint(x: scroll.frame.size.width * CGFloat(current_swipe), y: 0)
        scroll.setContentOffset(point, animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

