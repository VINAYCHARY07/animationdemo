//
//  ViewController.swift
//  AnimationDemo
//
//  Created by Nangunoori,Vinay Chary on 10/24/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Hellooutlet: UIImageView!
    @IBOutlet weak var Happyoutlet: UIButton!
    @IBOutlet weak var Sadoutlet: UIButton!
    @IBOutlet weak var Angryoutlet: UIButton!
    @IBOutlet weak var ShakeMeoutlet: UIButton!
    @IBOutlet weak var ShowMeoutlet: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
override func viewDidAppear(_
        animated: Bool) {
    //move the imageview outside of the screen view
    Hellooutlet.frame.origin.x = view.frame.maxX
    //similarly move other components outside of the screen
    Happyoutlet.frame.origin.x = view.frame.width
    Sadoutlet.frame.origin.x = view.frame.width
    Angryoutlet.frame.origin.x = view.frame.width
    ShakeMeoutlet.frame.origin.x = view.frame.width
}
    @IBAction func Happybuttonclicked(_ sender: Any) {
        updateandAnimate("happy")
    }
    @IBAction func SadbuttonClick(_ sender: Any) {
        updateandAnimate("sad")
    }
    @IBAction func Angrybuttonclicked(_ sender: Any) {
        updateandAnimate("angry")
    }
    @IBAction func Shakemebuttonclicked(_ sender: Any) {
        var width = Hellooutlet.frame.width
        width += 40
        var height = Hellooutlet.frame.height
        height += 40
        var x = Hellooutlet.frame.origin.x - 20
        var y = Hellooutlet.frame.origin.y - 20
        
        //create a rectangle object
        var largeFrame = CGRect(x: x, y: y, width: width,height: height)
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 50, animations: {self.Hellooutlet.frame = largeFrame})
    }
    @IBAction func ShowMebuttonclicked(_ sender: Any) {
        UIView.animate(withDuration: 1, animations: {
        // moving all the components to the center
        self.Hellooutlet.center.x = self.view.center.x
        self.Happyoutlet.center.x = self.view.center.x
        self.Sadoutlet.center.x = self.view.center.x
        self.Angryoutlet.center.x = self.view.center.x
        })
        //Disablen the showMe button
                ShowMeoutlet.isEnabled = false
    }
    func updateandAnimate(_ imageName:
                          String){
        // make the current image as oaque.
        UIView.animate(withDuration: 1, animations: { self.Hellooutlet.alpha=0})
        
        // And assign the new image with Animation and make it transparent(Alpha shoulkd be 1)
        UIView.animate(withDuration: 1, delay: 0.5, animations:{self.Hellooutlet.alpha=1
            self.Hellooutlet.image = UIImage(named: imageName)
        })
    }
}

