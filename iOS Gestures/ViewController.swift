//
//  ViewController.swift
//  iOS Gestures
//
//  Created by abuzeid on 9/29/17.
//  Copyright © 2017 aone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var triv: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func animateTransition() {
        //4
        
        /*
         let button  = UIButton(frame: CGRect(x: 200, y: 50, width: 50, height: 40))
         var circleMaskPathInitial = UIBezierPath(ovalInRect: button.frame)
         var extremePoint = CGPoint(x: button.center.x - 0, y: button.center.y - CGRectGetHeight(toViewController.view.bounds))
         var radius = sqrt((extremePoint.x*extremePoint.x) + (extremePoint.y*extremePoint.y))
         var circleMaskPathFinal = UIBezierPath(ovalInRect: CGRectInset(button.frame, -radius, -radius))
         
         //5
         var maskLayer = CAShapeLayer()
         maskLayer.path = circleMaskPathFinal.CGPath
         toViewController.view.layer.mask = maskLayer
         
         //6
         var maskLayerAnimation = CABasicAnimation(keyPath: "path")
         maskLayerAnimation.fromValue = circleMaskPathInitial.CGPath
         maskLayerAnimation.toValue = circleMaskPathFinal.CGPath
         maskLayerAnimation.duration = self.transitionDuration(transitionContext)
         maskLayerAnimation.delegate = self
         maskLayer.addAnimation(maskLayerAnimation, forKey: "path")
         
         */
    }
    
    
    
    @IBOutlet weak var btn: UIButton!
    @IBAction func animaction(_ sender: Any) {
        
        let bubble: BubbleTransition = BubbleTransition()
        
        bubble.startingPoint = self.triv.center
        bubble.transitionMode = TransitionMode.Present
        // The background color for bubble.
        // If not define the transition takes the
        // presented controller background color
        
        bubble.bubbleColor = UIColor.blue
        
        //        bubble.animateTransition(transitionMode: .Present, containerView: self.view, toView: self.triv, fromView: self.btn)
        
    }
    
    @IBAction func mPinchGestures(_ sender: UIPinchGestureRecognizer) {
   
        print(#function)
        
        
        switch sender.state {
        case .began,.changed:
            print("begin")
            
            guard let mview = sender.view  else{
                print("sender view is null")
                return
            }
            
            let translation = sender.location(in: mview)
            
            mview.center = CGPoint(x: mview.center.x + translation.x, y: mview.center.y + translation.y)
        case .ended:
            print("ended")
        default:
            print("default")
        }
        
        
    }
    
   
    
    @IBAction func swipeGesture(_ sender: Any) {
        print(#function)
    }
    
    @IBAction func panGesture(_ sender: Any) {
        print(#function)
    }
    
    @IBAction func rotateGest(_ sender: Any) {
        
        print(#function)
        
        
        
        
    }
    @IBAction func longPressGesture(_ sender: Any) {
        print(#function)
    }
}

