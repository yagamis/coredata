//
//  ReviewViewController.swift
//  FoodPin
//
//  Created by xiaobo on 15/10/21.
//  Copyright © 2015年 xiaobo. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {
    var rating: String?
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var stackView: UIStackView!
    @IBAction func ratingBtnTapped(sender: UIButton) {
        
        switch sender.tag {
        case 100:
            rating = "dislike"
        case 200:
            rating = "good"
        case 300:
            rating = "great"
        default:break
        }
        
        performSegueWithIdentifier("unwindToDetailView", sender: sender)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let blurEffect = UIBlurEffect(style: .Light)
        
        let effectView = UIVisualEffectView(effect: blurEffect)
        
        effectView.frame = view.frame
        
        imageView.addSubview(effectView)
        
        let scale = CGAffineTransformMakeScale(0, 0)
        let tranlate = CGAffineTransformMakeTranslation(0, 500)
        
        stackView.transform = CGAffineTransformConcat(scale, tranlate)
        
       
        
       

        // Do any additional setup after loading the view.
    }
    
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(2) { () -> Void in
            self.stackView.transform = CGAffineTransformIdentity
        }
        
//        UIView.animateWithDuration(0.3, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0.5, options: [], animations: { () -> Void in
//            self.stackView.transform = CGAffineTransformIdentity
//            }, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
