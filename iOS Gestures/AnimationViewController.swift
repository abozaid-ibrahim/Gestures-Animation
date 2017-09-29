//
//  AnimationViewController.swift
//  iOS Gestures
//
//  Created by abuzeid on 9/29/17.
//  Copyright © 2017 aone. All rights reserved.
//

import UIKit
/*DOCS
 
 #Animatable Properties
 -bounds: Animate this property to reposition the view’s content within the view’s frame.
 -frame: Animate this property to move and/or scale the view.
 -center: Animate this property when you want to move the view to a new location on screen.
 
 
 #PARAMETERS
 
 -withDuration: The duration of the animation.
 -delay: The amount of seconds UIKit will wait before it starts the animation.
 -options: Lets you customize a number of aspects about your animation. You’ll learn more about this parameter later on, but for now you can pass an empty array [] to mean “no special options”.
 -animations: The closure expression to provide your animations.
 -completion: A code closure to execute when the animation completes. This parameter often comes in handy when you want to perform some final cleanup tasks or chain animations one after the other.
 
 
 #Animation Options
 
 .repeat: Include this option to makes your animation loop forever.
 .autoreverse: Include this option only in conjunction with .repeat; this option repeatedly plays your
 .curveLinear: This option applies no acceleration or deceleration to the animation.
 .curveEaseIn: This option applies acceleration to the start of your animation.
 .curveEaseOut: This option applies deceleration to the end of your animation.
 .curveEaseInOut: This option applies acceleration to the start of your animation and applies decelera
 
 
 
 */
class AnimationViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBOutlet weak var transactionDurfield: UITextField!
    @IBOutlet weak var translateiv: UIImageView!
    @IBAction func translateView(_ sender: Any) {
        guard let dur = Float(transactionDurfield.text!) else {
            return;
        }
        
        scaleToCenterBounds(mili: dur)
        
        
    }
    
    
    func fade(mili:Float){
        UIView.animate(withDuration: TimeInterval(mili / 1000), delay: 0 , options: [.repeat,.autoreverse], animations: {
            self.translateiv.alpha = 0.5
            
        }, completion: { Void in
            //self.translateiv.center.x =  oldX
            
        })
        
    }
    
    
    
    
    
    func scaleToCenterBounds(mili:Float){
        let oldFrame = self.translateiv.bounds
        
        
        UIView.animate(withDuration: TimeInterval(mili / 1000), delay: 0 , options: [.repeat,.autoreverse], animations: {
            let extraW = CGFloat( 100)
            let extraH = CGFloat(80)
            let newframe = CGRect(x:oldFrame.origin.x + (extraW * 0.5),y:oldFrame.origin.y + (extraH * 0.5), width:oldFrame.width - extraW ,height:oldFrame.height - extraH )
            self.translateiv.bounds =  newframe
            
        }, completion: { Void in
            // self.translateiv.center.x =  oldX
            
        })
        
    }
    
    
    func scaleToCenter(mili:Float){
        let oldFrame = self.translateiv.frame
        
        
        UIView.animate(withDuration: TimeInterval(mili / 1000), delay: 0 , options: [.repeat,.autoreverse], animations: {
            let extraW = CGFloat( 100)
            let extraH = CGFloat(80)
            let newframe = CGRect(x:oldFrame.origin.x + (extraW * 0.5),y:oldFrame.origin.y + (extraH * 0.5), width:oldFrame.width - extraW ,height:oldFrame.height - extraH )
            self.translateiv.frame =  newframe
            
        }, completion: { Void in
           // self.translateiv.center.x =  oldX
            
        })
        
    }
    func animWithCompletion(mili:Float){
        let oldX = self.translateiv.center.x
        UIView.animate(withDuration: TimeInterval(mili / 1000), delay: 0 , options: [.curveLinear], animations: {
            self.translateiv.center.x +=  300
            
        }, completion: { Void in
            self.translateiv.center.x =  oldX
            
        })
        
    }
    func simiplestAnim(mili:Float){
        UIView.animate(withDuration: TimeInterval(mili / 1000), animations: {
            self.translateiv.center.x +=  300
        })
        
    }
    
    func animateWithOptions(mili:Float){
        let oldX = self.translateiv.center.x
        UIView.animate(withDuration: TimeInterval(mili / 1000), delay: 0 , options: [.repeat,.autoreverse], animations: {
            self.translateiv.center.x +=  300
            
        }, completion: { Void in
            self.translateiv.center.x =  oldX
            
        })
        
        
        
    }
    
}
