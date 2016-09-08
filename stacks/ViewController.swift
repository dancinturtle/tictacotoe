//
//  ViewController.swift
//  stacks
//
//  Created by Amy Giver on 5/4/16.
//  Copyright © 2016 Amy Giver. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var spaceNine: UIButton!
    @IBOutlet weak var spaceEight: UIButton!
    @IBOutlet weak var spaceSeven: UIButton!
    @IBOutlet weak var spaceSix: UIButton!
    @IBOutlet weak var spaceFive: UIButton!
    @IBOutlet weak var spaceFour: UIButton!
    @IBOutlet weak var spaceThree: UIButton!
    @IBOutlet weak var spaceTwo: UIButton!
    @IBOutlet weak var spaceOne: UIButton!
    @IBOutlet weak var winnerLabel: UILabel!
    
    var turns = 0
    var onex = 0
    var twox = 0
    var threex = 0
    var fourx = 0
    var fivex = 0
    var sixx = 0
    var sevenx = 0
    var eightx = 0
    var oneo = 0
    var twoo = 0
    var threeo = 0
    var fouro = 0
    var fiveo = 0
    var sixo = 0
    var seveno = 0
    var eighto = 0
    var allButtons:[UIButton]=[]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        winnerLabel.hidden=true
        allButtons = [self.spaceOne, self.spaceTwo, self.spaceThree, self.spaceFour, self.spaceFive, self.spaceSix, self.spaceSeven, self.spaceEight, self.spaceNine]
        
        
    }

    
    

    @IBAction func reset(sender: UIButton) {
        spaceOne.backgroundColor=UIColor.grayColor()
        spaceOne.enabled=true;
        spaceTwo.backgroundColor=UIColor.grayColor()
        spaceTwo.enabled=true;
        spaceThree.backgroundColor=UIColor.grayColor()
        spaceThree.enabled=true;
        spaceFour.backgroundColor=UIColor.grayColor()
        spaceFour.enabled=true;
        spaceFive.backgroundColor=UIColor.grayColor()
        spaceFive.enabled=true;
        spaceSix.backgroundColor=UIColor.grayColor()
        spaceSix.enabled=true;
        spaceSeven.backgroundColor=UIColor.grayColor()
        spaceSeven.enabled=true;
        spaceEight.backgroundColor=UIColor.grayColor()
        spaceEight.enabled=true;
        spaceNine.backgroundColor=UIColor.grayColor()
        spaceNine.enabled=true;
        turns=0
        onex = 0
        twox = 0
        threex = 0
        fourx = 0
        fivex = 0
        sixx = 0
        sevenx = 0
        eightx = 0
        oneo = 0
        twoo = 0
        threeo = 0
        fouro = 0
        fiveo = 0
        sixo = 0
        seveno = 0
        eighto = 0
        winnerLabel.hidden=true
    }
  
    @IBAction func spaceSelected(sender: UIButton) {
        
        if(turns%2==0){
        sender.backgroundColor=UIColor.blueColor()
            if(sender.tag==1){
                onex += 1
                fourx += 1
                eightx += 1
            }
            else if(sender.tag==2){
                twox += 1
                fourx += 1
            }
            else if(sender.tag==3){
                threex += 1
                fourx += 1
                sevenx += 1
            }
            else if(sender.tag==4){
                onex += 1
                fivex += 1
            }
            else if(sender.tag==5){
                twox += 1
                fivex += 1
                sevenx += 1
                eightx += 1
            }
            else if(sender.tag==6){
                threex += 1
                fivex += 1
            }
            else if(sender.tag==7){
                onex += 1
                sixx += 1
                sevenx += 1
            }
            else if(sender.tag==8){
                twox += 1
                sixx += 1
            }
            else if(sender.tag==9){
                threex += 1
                sixx += 1
                eightx += 1
            }
        }
        else if(turns%2==1){
            sender.backgroundColor=UIColor.yellowColor()
            if(sender.tag==1){
                oneo += 1
                fouro += 1
                eighto += 1
            }
            else if(sender.tag==2){
                twoo += 1
                fouro += 1
            }
            else if(sender.tag==3){
                threeo += 1
                fouro += 1
                seveno += 1
            }
            else if(sender.tag==4){
                oneo += 1
                fiveo += 1
            }
            else if(sender.tag==5){
                twoo += 1
                fiveo += 1
                seveno += 1
                eighto += 1
            }
            else if(sender.tag==6){
                threeo += 1
                fiveo += 1
            }
            else if(sender.tag==7){
                oneo += 1
                sixo += 1
                seveno += 1
            }
            else if(sender.tag==8){
                twoo += 1
                sixo += 1
            }
            else if(sender.tag==9){
                threeo += 1
                sixo += 1
                eighto += 1
            }

        }
        sender.enabled=false
        turns += 1
        if(onex==3||twox==3||threex==3||fourx==3||fivex==3||sixx==3||sevenx==3||eightx==3){
            winnerLabel.text="Blue wins!"
            winnerLabel.hidden=false
            for button in self.allButtons {
                button.enabled = false
            }
        }
        else if(oneo==3||twoo==3||threeo==3||fouro==3||fiveo==3||sixo==3||seveno==3||eighto==3){
            winnerLabel.text="Gold wins!"
            winnerLabel.hidden=false
            for button in self.allButtons {
                button.enabled = false
            }
        }
        else if(turns==9 && winnerLabel.hidden == true){
            winnerLabel.text="Cat's game!"
            winnerLabel.hidden=false
        }
    }
}