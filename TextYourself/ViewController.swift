//
//  ViewController.swift
//  TextYourself
//
//  Created by Shirley He on 8/12/16.
//  Copyright © 2016 Shirley He. All rights reserved.
//

import UIKit
import MessageUI

class ViewController: UIViewController, MFMessageComposeViewControllerDelegate {

    @IBAction func sendMessage(sender: AnyObject) {
        
        var messageVC = MFMessageComposeViewController()
        
        //runAfterDelay(0.5)
  
        messageVC.body = "Should be delayed - sent ";
        messageVC.recipients = ["781-333-1368"]
        messageVC.messageComposeDelegate = self;
        
        self.presentViewController(messageVC, animated: false, completion: nil)
        
    }
    
    
    //trying to delay text message sending
//    func runAfterDelay(delay: NSTimeInterval, block: dispatch_block_t) {
//        let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay * Double(NSEC_PER_SEC)))
//        dispatch_after(time, dispatch_get_main_queue(), block)
//    }
    func delay(delay: Double, closure:()->()) {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64(delay * Double(NSEC_PER_SEC))), dispatch_get_main_queue(), closure)
    }
    
    
    
    func messageComposeViewController(controller: MFMessageComposeViewController, didFinishWithResult result: MessageComposeResult) {
        
        switch(result.rawValue) {
            
        case MessageComposeResultCancelled.rawValue: print("Message was cancelled")
        self.dismissViewControllerAnimated(true, completion: nil)
            
        case MessageComposeResultSent.rawValue:
            print("Message was sent")
            self.dismissViewControllerAnimated(true, completion: nil)
        //some other constraints
        default: break;
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

