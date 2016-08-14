//
//  ViewController.swift
//  TextYourself
//
//  Created by Shirley He on 8/12/16.
//  Copyright © 2016 Shirley He. All rights reserved.
//

import UIKit
import MessageUI

class ViewController: UIViewController, MFMessageComposeViewControllerDelegate  {
    
    //the textfield where the user entered their message
    @IBOutlet var textMessage: UITextView!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    var currentValue: Float = 0.0
    
    @IBAction func bloodAlcoholChanged(sender: AnyObject) {
        
        currentValue = (slider.value)
        sliderLabel.text = "\(currentValue)"
        
    }
    
    //variable that will become the final changed text message
    var alteredMessage = ""
    var typoChance = 0.0
   
    //dictionary
    
    var typo: [String :String] = [
        
        "q" : "was",
        "w" : "qasde",
        "e" : "wsdfr",
        "r" : "edfgt",
        "t" : "rfghy",
        "y" : "tghju",
        "u" : "yhjki",
        "i" : "ujklo",
        "o" : "iklp",
        "p" : "ol",
        "a" : "qwsxz",
        "s" : "qwedazxc",
        "d" : "wersfxvc",
        "f" : "ertdgcvb",
        "g" : "rtyfhvnb",
        "h" : "tyugjbnm",
        "j" : "yuihknm",
        "k" : "uiojlm",
        "l" : "iopkm",
        "z" : "asx ",
        "x" : "asdzc ",
        "c" : "sdfxv ",
        "v" : "dfgcb ",
        "b" : "fghvn ",
        "n" : "ghjbm ,",
        "m" : "jkln ,.",
        ]
    
    @IBAction func politifySend(sender: AnyObject) {
//        alteredMessage = textMessage.text.lowercaseString
//        alteredMessage = alteredMessage.stringByReplacingOccurrencesOfString("fuck", withString: "strongly disregard")
//        alteredMessage = alteredMessage.stringByReplacingOccurrencesOfString("shit", withString: "unpleasant")
//        alteredMessage = alteredMessage.stringByReplacingOccurrencesOfString("dammit", withString: "gosh-diddly-darnit")
//        alteredMessage = alteredMessage.stringByReplacingOccurrencesOfString("bitch", withString: "lady")
//        alteredMessage = alteredMessage.stringByReplacingOccurrencesOfString("tits", withString: "breasts, ma'am")
//        alteredMessage = alteredMessage.stringByReplacingOccurrencesOfString("asshole", withString: "gentleman")
//        alteredMessage = alteredMessage.stringByReplacingOccurrencesOfString("kill", withString: "politely murder")
//        alteredMessage = alteredMessage.stringByReplacingOccurrencesOfString("...", withString: " ;)")
        
        
        
        
        
        
        alteredMessage = textMessage.text.lowercaseString
        
        let replacements: [String:String] = ["dickjuice": "male sexual fluid", "cockmongler": "noun", "bitchy": "adjective", "lezzie": "noun", "kunt": "nondescript genitalia", "hoe": "sexually promiscuous individual", "dick-sneeze": "orgasm", "motherfucker": "jerk", "goddamn": "goshdarn", "vag": "nondescript genitalia", "asspirate": "noun", "cockjockey": "noun", "asslicker": "idiot", "bollox": "nondescript genitalia", "clit": "nondescript genitalia", "punanny": "nondescript genitalia", "queef": "act of passing gas from female genitalia", "dickweed": "idiot", "ass-jabber": "noun", "skank": "sexually promiscuous individual", "guido": "italian individual", "thundercunt": "idiot", "dickbag": "idiot", "dickwad": "idiot", "mothafuckin": "adjective", "shitdick": "idiot", "vjayjay": "nondescript genitalia", "queerhole": "noun", "cockmaster": "noun", "vajayjay": "nondescript genitalia", "scrote": "nondescript genitalia", "cracker": "caucasian individual", "kyke": "jewish individual", "pissed off": "angry", "panooch": "nondescript genitalia", "choad": "nondescript genitalia", "assbite": "idiot", "fuckoff": "Please leave me", "douchewaffle": "noun", "buttfucka": "noun", "cumtart": "idiot", "fagtard": "idiot", "camel toe": "incidence where female genitalia seem to be showing through overly-tight leg-wear", "shitbrains": "idiot", "gaydo": "noun", "tittyfuck": "act of intimate nature", "cockass": "jerk", "bollocks": "nondescript genitalia", "muffdiver": "noun", "cocksmith": "noun", "assmonkey": "idiot", "douche-fag": "idiot", "anus": "butt", "dickface": "idiot", "honkey": "caucasian individual", "cockfucker": "idiot", "sandnigger": "Middle-Eastern individual", "cocksniffer": "noun", "heeb": "jewish individual", "kike": "jewish individual", "pissed": "urinated or angry", "cockbite": "idiot", "fucker": "fornicator", "fuckup": "idiot", "muff": "nondescript genitalia", "ruski": "russian individual", "shitcunt": "idiot", "shit": "poop", "chesticle": "breast", "asssucker": "idiot", "dumbshit": "idiot", "assbanger": "noun", "dumass": "idiot", "cuntlicker": "noun", "cockmuncher": "noun", "poon": "nondescript genitalia", "tard": "idiot", "dickmonger": "noun", "gayass": "butt", "spook": "caucasian individual", "assbandit": "noun", "pissflaps": "nondescript genitalia", "penispuffer": "noun", "dookie": "poop", "fagfucker": "noun", "assshole": "butt", "cuntass": "idiot", "poontang": "nondescript genitalia", "fuckhead": "butt", "hard on": "sexual arousal", "fuckstick": "nondescript genitalia", "assgoblin": "noun", "ho": "sexually promiscuous individual", "assmunch": "idiot", "suckass": "idiot", "dickmilk": "male sexual fluid", "asscock": "idiot", "cunnilingus": "act of intimate nature", "mick": "irish individual", "gaytard": "noun", "dickhole": "nondescript genitalia", "fucknut": "idiot", "jerkass": "idiot", "cunt": "vagina", "cocknugget": "idiot", "cockknoker": "noun", "asslick": "idiot", "dicktickler": "noun", "clitface": "idiot", "jerk off": "perform act of sexual arousal", "cumguzzler": "noun", "shithead": "jerk", "prick": "jerk", "paki": "pakistani individual", "coochy": "nondescript genitalia", "dicks": "uncouth individuals", "dickfucker": "noun", "chode": "idiot", "dike": "noun", "handjob": "act of intimate nature", "tits": "breasts", "brotherfucker": "noun", "wetback": "mexican individual", "cumdumpster": "a person who exchanges sexual acts for monetary currency", "munging": "act of intimate nature", "shitter": "bathroom", "poonani": "nondescript genitalia", "assbag": "idiot", "va-j-j": "nondescript genitalia", "puto": "idiot", "schlong": "nondescript genitalia", "renob": "erection", "dicksucker": "noun", "fuckface": "idiot", "cockhead": "idiot", "minge": "nondescript genitalia", "cockface": "idiot", "fucking": "adjective", "shitbreath": "halitosis", "shitbagger": "idiot", "gayfuckist": "noun", "gringo": "foreigner of Hispanic culture", "homodumbshit": "idiot", "fag": "noun", "homo": "noun", "cooter": "vagina", "beaner": "mexican individual", "cocksmoker": "noun", "asshole": "jerk", "dickhead": "idiot", "faggotcock": "noun", "arse": "butt", "butt plug": "sexual toy typically inserted into the rectum", "porch monkey": "african individual", "dumbass": "idiot", "cumjockey": "noun", "wop": "italian individual", "bitch": "female dog", "wank": "act of intimate nature", "junglebunny": "african individual", "cumslut": "sexually promiscuous individual", "twatwaffle": "noun", "bitches": "female dog", "fudgepacker": "noun", "penisbanger": "noun", "assshit": "idiot", "fagbag": "noun", "kooch": "nondescript genitalia", "assfucker": "noun", "whore": "sexually promiscuous individual", "shitass": "idiot", "cockmongruel": "noun", "spic": "mexican individual", "twatlips": "idiot", "fuckwitt": "idiot", "peckerhead": "idiot", "pussy": "nondescript genitalia", "dickfuck": "idiot", "cockwaffle": "idiot", "mcfagget": "noun", "dick": "jerk", "splooge": "ejaculate", "bitchass": "idiot", "jigaboo": "african individual", "titjob": "act of intimate nature", "lesbo": "noun", "ass-hat": "idiot", "assmuncher": "butt", "unclefucker": "noun", "asshat": "butt", "gaylord": "noun", "fucks": "act of intimate nature", "gooch": "nondescript genitalia", "slut": "sexually promiscuous individual", "arsehole": "butt", "bampot": "idiot", "jap": "japanese individual", "doochbag": "idiot", "chink": "asian individual", "chinc": "chinese individual", "shitfaced": "inebriated", "shitty": "bad", "fuckbag": "idiot", "cockmonkey": "idiot", "ass": "butt", "shiznit": "poop", "cocknose": "idiot", "penisfucker": "noun", "butt-pirate": "noun", "assnigger": "african individual", "shitspitter": "butt", "asshead": "idiot", "jungle bunny": "african individual", "shiz": "poop", "fuckwad": "idiot", "queer": "noun", "smeg": "poop", "assface": "butt", "lardass": "overweight individual", "pollock": "polish individual", "cockburger": "idiot", "porchmonkey": "african individual", "assclown": "butt", "cum": "male sexual fluid", "spick": "mexican individual", "axwound": "nondescript genitalia", "fuckbutt": "butt", "bastard": "jerk", "cockshit": "idiot", "polesmoker": "noun", "asswipe": "butt", "pussies": "nondescript genitalia", "clitfuck": "act of intimate nature", "shithouse": "bathroom", "whoreface": "idiot", "feltch": "act of intimate nature", "dyke": "noun", "kraut": "german individual", "titfuck": "act of intimate nature", "coon": "african individual", "fucktard": "idiot", "queerbait": "noun", "cumbubble": "idiot", "bitchtits": "noun", "blow job": "act of intimate nature", "jackass": "idiot", "dickslap": "act of intimate nature", "gook": "chinese individual", "slutbag": "sexually promiscuous individual", "hell": "heck", "dickweasel": "idiot", "cocksmoke": "noun", "motherfucking": "fornicating", "blowjob": "act of intimate nature", "jizz": "male sexual fluid", "goddamnit": "goshdarnit", "kootch": "nondescript genitalia", "clusterfuck": "mess up", "dumb ass": "idiot", "fuckbutter": "fluids resulting from the act of intercourse", "skeet": "male sexual fluid", "shitcanned": "fired", "lameass": "person who generally is not of high social standing", "dicksucking": "act of intimate nature", "douchebag": "jerk", "ass-pirate": "noun", "poonany": "vagina", "jagoff": "idiot", "dumshit": "idiot", "bumblefuck": "noun", "shitbag": "idiot", "asshopper": "noun", "dipshit": "idiot", "buttfucker": "noun", "sand nigger": "Middle-Eastern individual", "boner": "erection", "punta": "female dog", "shitting": "pooping", "fucked": "sexually enjoyed", "snatch": "nondescript genitalia", "cocksucker": "noun", "asses": "butts", "mothafucka": "jerk", "whorebag": "idiot", "bullshit": "poop", "deggo": "italian individual", "cuntface": "idiot", "fatass": "overweight individual", "carpetmuncher": "noun", "fuckboy": "idiot", "dildo": "sexual toy", "piss": "urinate", "fucktart": "idiot", "faggot": "noun", "gaybob": "noun", "dago": "italian individual", "fuckersucker": "idiot", "flamer": "noun", "shitstain": "poop", "dickwod": "idiot", "fuck": "fornicate", "wankjob": "act of intimate nature", "twats": "unkind persons", "shitface": "pooface", "cuntslut": "idiot", "gaywad": "noun", "dumbfuck": "idiot", "shithole": "idiot", "asswad": "butt", "douche": "jerk", "coochie": "nondescript genitalia", "assjacker": "noun", "fuckwit": "idiot", "pussylicking": "act of intimate nature", "twat": "nondescript genitalia", "faggit": "noun", "gayfuck": "noun", "dickbeaters": "hands", "fuckbrain": "idiot", "cuntrag": "idiot", "humping": "act of intimate nature", "asscracker": "butt", "cunthole": "nondescript genitalia", "fuckin": "adjective", "fuckhole": "jerk", "fuckass": "idiot", "skullfuck": "act of intimate nature", "assfuck": "rear-loving", "cock": "jerk", "fucknutt": "idiot", "pecker": "jerk", "tit": "breast", "shittiest": "worst", "cunnie": "nondescript genitalia"]
        
        for (rude, polite) in replacements {
            alteredMessage = alteredMessage.stringByReplacingOccurrencesOfString(rude, withString: polite)
        }
        alteredMessage = alteredMessage.stringByReplacingOccurrencesOfString("jerk", withString: "meanie")
        alteredMessage = alteredMessage.stringByReplacingOccurrencesOfString("idiot", withString: "mentally slow person")
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        

        
        var messageVC = MFMessageComposeViewController()
        var result = ""
        
        //runAfterDelay(0.5)
        if currentValue == 0.0 {
            result = alteredMessage
            
        }
        else {
            
            if (currentValue >= 0.5) {
                result = "Please go to the hospital"
            }
            else if (currentValue > 0.4) {
                typoChance = 0.6
            }
            else {
                typoChance = -0.00785 + 0.1291 * Double(currentValue) + 3.3598 * Double(currentValue) * Double(currentValue)
            }
            
            
            for oldWord in alteredMessage.componentsSeparatedByString(" ") {
                var newWord = ""
                let randomDouble = Double(arc4random())/Double(UInt32.max)
                
                for character in oldWord.characters {
                    if (randomDouble > typoChance) {
                        newWord.append(character)
                        
                    }
                    else if typo[String(character)] != nil {
                        var replace =  typo[String(character)]
                        //var replacecharArr = replace!.characters.map{String($0)}
                        var replaceCharArr = [Character](replace!.characters)
                        let randomInt = Int(arc4random_uniform(UInt32(replace!.characters.count-1)))
                        //      replace = replaceCharArr[randomInt]
                        let myChar: Character = replaceCharArr[randomInt]
                        newWord.append(myChar)
                    }
                }
                
                if (randomDouble > typoChance/2.0) {
                    newWord = newWord + " "
                    
                }
                if (randomDouble < typoChance*1.5) {
                    newWord = newWord.uppercaseString
                }
                
                result = result + newWord
                print(newWord)
            }
            
           let randomDouble = Double(arc4random())/Double(UInt32.max)
            if (randomDouble < 0.1) {
                result = result + " I love you, man."
            }

        }
   
        messageVC.body = result
        //"Should be delayed - sent ";
        messageVC.recipients = ["781-333-1368"]
        messageVC.messageComposeDelegate = self;
        
        self.presentViewController(messageVC, animated: false, completion: nil)
        
    }
    
    
    @IBAction func angerSend(sender: AnyObject) {
//        alteredMessage = textMessage.text.lowercaseString
//        alteredMessage = alteredMessage.stringByReplacingOccurrencesOfString("please", withString: "bitch please")
//        alteredMessage = alteredMessage.stringByReplacingOccurrencesOfString("kindly", withString: "fucking")
//        alteredMessage = alteredMessage.stringByReplacingOccurrencesOfString("man", withString: "motherfucker")
//        alteredMessage = alteredMessage.stringByReplacingOccurrencesOfString("they", withString: "these little shits")
//        alteredMessage = alteredMessage.stringByReplacingOccurrencesOfString("kids", withString: "these little shits")
//        alteredMessage = alteredMessage.stringByReplacingOccurrencesOfString(":)", withString: ">:(")
        
        alteredMessage = textMessage.text.lowercaseString
        
        let articles = ["the", "a", "one", "some", "few"]
        let profanity = ["fucking", "goddamn", "shitting"]
        
        let words1 = ["please", "kindly", "man", "men", "woman", "women", "person", "people", "they", "kid", "kids", ":)", ";)", "thanks", "thank you"]
        let words2 = ["bitch please", "fucking", "motherfucker", "motherfuckers", "bitch", "bitches", "asshole", "assholes", "these little shits", "this little shit", "these little shits", ">:(", ">:(", "go fuck yourself", "go fuck yourself"]
        
        for i in 0..<words1.count {
              alteredMessage = alteredMessage.stringByReplacingOccurrencesOfString(words1[i], withString: words2[i])
        }
        
        for article in articles {
            var word = profanity[Int(arc4random_uniform(UInt32(profanity.count)))]
            alteredMessage = alteredMessage.stringByReplacingOccurrencesOfString(article, withString: word + " " + article)
        }
        
        var messageVC = MFMessageComposeViewController()
        
        //runAfterDelay(0.5)
        
//        messageVC.body = alteredMessage
//        //"Should be delayed - sent ";
//        messageVC.recipients = ["781-333-1368"]
//        messageVC.messageComposeDelegate = self;
//        
//        self.presentViewController(messageVC, animated: false, completion: nil)
        
        
        //copied from politifier
        var result = ""
        
        //runAfterDelay(0.5)
        if currentValue == 0.0 {
            result = alteredMessage
            
        }
        else {
            
            if (currentValue >= 0.5) {
                result = "Please go to the hospital"
            }
            else if (currentValue > 0.4) {
                typoChance = 0.6
            }
            else {
                typoChance = -0.00785 + 0.1291 * Double(currentValue) + 3.3598 * Double(currentValue) * Double(currentValue)
            }
            
            
            for oldWord in alteredMessage.componentsSeparatedByString(" ") {
                var newWord = ""
                let randomDouble = Double(arc4random())/Double(UInt32.max)
                
                for character in oldWord.characters {
                    if (randomDouble > typoChance) {
                        newWord.append(character)
                        
                    }
                    else if typo[String(character)] != nil {
                        var replace =  typo[String(character)]
                        //var replacecharArr = replace!.characters.map{String($0)}
                        var replaceCharArr = [Character](replace!.characters)
                        let randomInt = Int(arc4random_uniform(UInt32(replace!.characters.count-1)))
                        //      replace = replaceCharArr[randomInt]
                        let myChar: Character = replaceCharArr[randomInt]
                        newWord.append(myChar)
                    }
                }
                
                if (randomDouble > typoChance/2.0) {
                    newWord = newWord + " "
                    
                }
                if (randomDouble < typoChance*1.5) {
                    newWord = newWord.uppercaseString
                }
                
                result = result + newWord
                print(newWord)
            }
            
            let randomDouble = Double(arc4random())/Double(UInt32.max)
            if (randomDouble < 0.1) {
                result = result + " I love you, man."
            }
            
            
        }

        messageVC.body = result
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
        
        //dismiss keyboard tap
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
        
    }
    
    //call this function when tap is recognized
    func dismissKeyboard() {
        //causes the view (or one of its embedded text fields) to resign the first responder status
        view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

