//
//  ViewController.swift
//  TextYourself
//
//  Created by Shirley He on 8/12/16.
//  Copyright © 2016 Shirley He. All rights reserved.
//

import UIKit
import MessageUI

class ViewController: UIViewController, MFMessageComposeViewControllerDelegate, UITableViewDelegate, UITableViewDataSource {
    
    //the textfield where the user entered their message
    @IBOutlet var textMessage: UITextView!
    
    //to be adjusted if they choose drunkify
    var bloodAlcohol = 0
    
    //the following array will provide labels for tableViewSelector
    var cellContent = ["Politify", "Anger Translator"]
    
    //tells the tableView to have 3 rows (the number of labels in cellConent array)
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return cellContent.count
    }
    
    //labels each cell
    //
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        cell.textLabel?.text = cellContent[indexPath.row]
        
        return cell
    }
    
    
    var selectedRow = ""
    
    //sets selectedRow to equal whether the user picked "Drunkify" "Politify" or "Anger Translator"
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //indexed at 0
        selectedRow = cellContent[indexPath.row]
    }
    
    //variable that will become the final changed text message
    var alteredMessage = ""

    @IBAction func sendMessage(sender: AnyObject) {
        alteredMessage = textMessage.text
        
        
        //sets the alteredMessage based on what the user selected through various if/then statements
        if selectedRow == "Politify" {
            alteredMessage = textMessage.text.stringByReplacingOccurrencesOfString("fuck", withString: "strongly disregard")
            alteredMessage = alteredMessage.stringByReplacingOccurrencesOfString("bitch", withString: "female dog")
        } else if selectedRow == "Anger Translator" {
            alteredMessage = textMessage.text.stringByReplacingOccurrencesOfString("please", withString: "bitch please")
            alteredMessage = alteredMessage.stringByReplacingOccurrencesOfString("kindly", withString: "fucking")
        }
        
        var messageVC = MFMessageComposeViewController()
        
        //runAfterDelay(0.5)
  
        messageVC.body = alteredMessage
        //"Should be delayed - sent ";
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

