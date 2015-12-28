//
//  FourthInterfaceController.swift
//  Pizza
//
//  Created by Gerardo Valencia on 12/27/15.
//  Copyright © 2015 Gerardo Valencia. All rights reserved.
//

import WatchKit
import Foundation

var cadenacuatro  = ""

class FourthInterfaceController: WKInterfaceController {

    @IBOutlet var BotonMozarela: WKInterfaceButton!
    @IBOutlet var BotonCheddar: WKInterfaceButton!
    @IBOutlet var BotonParmesano: WKInterfaceButton!
    @IBOutlet var BotonSinQueso: WKInterfaceButton!
    
    @IBAction func botonMozarela() {
        
        cadenacuatro = "Mozarela"
        
        pushControllerWithName("FifthInterfaceController", context: nil)
    }
    
    @IBAction func botonCheddar() {
        
        cadenacuatro = "Cheddar"
        
        pushControllerWithName("FifthInterfaceController", context: nil)
    }
    
    @IBAction func botonParmesano() {
        
        cadenacuatro = "Parmesano"
        
        pushControllerWithName("FifthInterfaceController", context: nil)
    }
    
    @IBAction func botonSinQueso() {
        
        cadenacuatro = "Sin Queso"
        
        pushControllerWithName("FifthInterfaceController", context: nil)
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
