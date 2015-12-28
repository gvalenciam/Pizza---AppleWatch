//
//  FirstInterfaceController.swift
//  Pizza
//
//  Created by Gerardo Valencia on 12/27/15.
//  Copyright © 2015 Gerardo Valencia. All rights reserved.
//

import WatchKit
import Foundation

var banderalabel = 0
var cadenauno = ""

class FirstInterfaceController: WKInterfaceController {

    @IBOutlet var LabelInicio: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        LabelInicio.setText(cadenauno)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
