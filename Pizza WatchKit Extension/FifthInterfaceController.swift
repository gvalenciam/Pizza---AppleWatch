//
//  FifthInterfaceController.swift
//  Pizza
//
//  Created by Gerardo Valencia on 12/27/15.
//  Copyright © 2015 Gerardo Valencia. All rights reserved.
//

import WatchKit
import Foundation

var contador = 0
var cadenajamon = ""
var banderajamon = 0
var cadenapepperoni = ""
var banderapepperoni = 0
var cadenapavo = ""
var banderapavo = 0
var cadenasalchicha = ""
var banderasalchicha = 0
var cadenaaceituna = ""
var banderaaceituna = 0
var cadenacebolla = ""
var banderacebolla = 0

var cadenacinco = ""


class FifthInterfaceController: WKInterfaceController {

    @IBOutlet var SwitchJamon: WKInterfaceSwitch!
    @IBOutlet var SwitchPepperoni: WKInterfaceSwitch!
    @IBOutlet var SwitchPavo: WKInterfaceSwitch!
    @IBOutlet var SwitchSalchicha: WKInterfaceSwitch!
    @IBOutlet var SwitchAceituna: WKInterfaceSwitch!
    @IBOutlet var SwitchCebolla: WKInterfaceSwitch!
    @IBOutlet var BotonIniciarPedido: WKInterfaceButton!
    
    @IBAction func botonIniciarPedido() {
        
        pushControllerWithName("SixthInterfaceController", context: nil)
        
    }
    
    @IBAction func switchJamon(value: Bool) {
        
        
        if (banderajamon == 0)
        {
            SwitchJamon.setOn(true)
            cadenajamon = "Jamon"
            banderajamon = 1
            contador = contador + 1
        }
        else
        {
            SwitchJamon.setOn(false)
            cadenajamon = ""
            banderajamon = 0
            contador = contador - 1
        }
    }
    
    @IBAction func switchPepperoni(value: Bool) {
        
        
        if (banderapepperoni == 0)
        {
            SwitchPepperoni.setOn(true)
            cadenapepperoni = "Pepperoni"
            banderapepperoni = 1
            contador = contador + 1
        }
        else
        {
            SwitchPepperoni.setOn(false)
            cadenapepperoni = ""
            banderapepperoni = 0
            contador = contador - 1
        }
    }
    
    @IBAction func switchPavo(value: Bool) {
        
        if (banderapavo == 0)
        {
            SwitchPavo.setOn(true)
            cadenapavo = "Pavo"
            banderapavo = 1
            contador = contador + 1
        }
        else
        {
            SwitchPavo.setOn(false)
            cadenapavo = ""
            banderapavo = 0
            contador = contador - 1
        }
    }
    
    @IBAction func switchSalchicha(value: Bool) {
        
        
        if (banderasalchicha == 0)
        {
            SwitchSalchicha.setOn(true)
            cadenasalchicha = "Salchicha"
            banderasalchicha = 1
            contador = contador + 1
        }
        else
        {
            SwitchSalchicha.setOn(false)
            cadenasalchicha = ""
            banderasalchicha = 0
            contador = contador - 1
        }
    }
    
    @IBAction func switchAceituna(value: Bool) {
        
        if (banderaaceituna == 0)
        {
            SwitchAceituna.setOn(true)
            cadenaaceituna = "Aceituna"
            banderaaceituna = 1
            contador = contador + 1
        }
        else
        {
            SwitchAceituna.setOn(false)
            cadenaaceituna = ""
            banderaaceituna = 0
            contador = contador - 1
        }

    }
    
    @IBAction func switchCebolla(value: Bool) {
        
        if (banderacebolla == 0)
        {
            SwitchCebolla.setOn(true)
            cadenacebolla = "Cebolla"
            banderacebolla = 1
            contador = contador + 1
        }
        else
        {
            SwitchCebolla.setOn(false)
            cadenacebolla = ""
            banderacebolla = 0
            contador = contador - 1

        }
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
    
    override func willDisappear() {
    }

}
