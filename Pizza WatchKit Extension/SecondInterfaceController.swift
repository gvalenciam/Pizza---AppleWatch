//
//  SecondInterfaceController.swift
//  Pizza
//
//  Created by Gerardo Valencia on 12/27/15.
//  Copyright © 2015 Gerardo Valencia. All rights reserved.
//

import WatchKit
import Foundation

var cadenados = ""

class SecondInterfaceController: WKInterfaceController {

    @IBOutlet var BotonPequena: WKInterfaceButton!
    
    @IBAction func botonPequena() {
    
        cadenados = "Pequeña"
        
        pushControllerWithName("ThirdInterfaceController", context: nil)
        
    }
    
    @IBOutlet var BotonMediana: WKInterfaceButton!
    
    @IBAction func botonMediana() {
        
        cadenados = "Mediana"
        
        pushControllerWithName("ThirdInterfaceController", context: nil)
    }
    
    @IBOutlet var BotonGrande: WKInterfaceButton!
    
    @IBAction func botonGrande() {
        
        cadenados = "Grande"
        
        pushControllerWithName("ThirdInterfaceController", context: nil)
    }
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
