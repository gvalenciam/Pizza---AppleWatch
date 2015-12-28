//
//  FifthInterfaceController.swift
//  Pizza
//
//  Created by Gerardo Valencia on 12/27/15.
//  Copyright © 2015 Gerardo Valencia. All rights reserved.
//

import WatchKit
import Foundation

var cadenajamon = ""
var banderajamon = 3
var cadenapepperoni = ""
var banderapepperoni = 3
var cadenapavo = ""
var banderapavo = 3
var cadenasalchicha = ""
var banderasalchicha = 3
var cadenaaceituna = ""
var banderaaceituna = 3
var cadenacebolla = ""
var banderacebolla = 3

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
        
        cadenacinco = cadenajamon
        
        pushControllerWithName("SixthInterfaceController", context: nil)
    }
    
    @IBAction func switchJamon(value: Bool) {
        
        
        if (banderajamon == 0)
        {
            SwitchJamon.setOn(true)
            cadenajamon = "Jamon"
            banderajamon = 1
            BotonIniciarPedido.setEnabled(true)
        }
        else
        {
            SwitchJamon.setOn(false)
            cadenajamon = ""
            banderajamon = 0
            
            if (banderapepperoni == 0 && banderapavo == 0 && banderasalchicha == 0 && banderaaceituna == 0 && banderacebolla == 0)
            {
                BotonIniciarPedido.setEnabled(false)
            }
        }
    }
    
    @IBAction func switchPepperoni(value: Bool) {
        
        
        if (banderapepperoni == 0)
        {
            SwitchPepperoni.setOn(true)
            cadenapepperoni = "Pepperoni"
            banderapepperoni = 1
            BotonIniciarPedido.setEnabled(true)
        }
        else
        {
            SwitchPepperoni.setOn(false)
            cadenapepperoni = ""
            banderapepperoni = 0
            
            if (banderajamon == 0 && banderapavo == 0 && banderasalchicha == 0 && banderaaceituna == 0 && banderacebolla == 0)
            {
                BotonIniciarPedido.setEnabled(false)
            }
        }
    }
    
    @IBAction func switchPavo(value: Bool) {
        
        if (banderapavo == 0)
        {
            SwitchPavo.setOn(true)
            cadenapavo = "Pavo"
            banderapavo = 1
            BotonIniciarPedido.setEnabled(true)
        }
        else
        {
            SwitchPavo.setOn(false)
            cadenapavo = ""
            banderapavo = 0
            
            if (banderajamon == 0 && banderapepperoni == 0 && banderasalchicha == 0 && banderaaceituna == 0 && banderacebolla == 0)
            {
                BotonIniciarPedido.setEnabled(false)
            }
        }
    }
    
    @IBAction func switchSalchicha(value: Bool) {
        
        
        if (banderasalchicha == 0)
        {
            SwitchSalchicha.setOn(true)
            cadenasalchicha = "Salchicha"
            banderasalchicha = 1
            BotonIniciarPedido.setEnabled(true)
        }
        else
        {
            SwitchSalchicha.setOn(false)
            cadenasalchicha = ""
            banderasalchicha = 0
            
            if (banderapepperoni == 0 && banderapavo == 0 && banderajamon == 0 && banderaaceituna == 0 && banderacebolla == 0)
            {
                BotonIniciarPedido.setEnabled(false)
            }
        }
    }
    
    @IBAction func switchAceituna(value: Bool) {
        
        if (banderaaceituna == 0)
        {
            SwitchAceituna.setOn(true)
            cadenaaceituna = "Aceituna"
            banderaaceituna = 1
            BotonIniciarPedido.setEnabled(true)
        }
        else
        {
            SwitchAceituna.setOn(false)
            cadenaaceituna = ""
            banderaaceituna = 0
            
            if (banderapepperoni == 0 && banderapavo == 0 && banderasalchicha == 0 && banderajamon == 0 && banderacebolla == 0)
            {
                BotonIniciarPedido.setEnabled(false)
            }
        }

    }
    
    @IBAction func switchCebolla(value: Bool) {
        
        if (banderacebolla == 0)
        {
            SwitchCebolla.setOn(true)
            cadenacebolla = "Cebolla"
            banderacebolla = 1
            BotonIniciarPedido.setEnabled(true)
        }
        else
        {
            SwitchCebolla.setOn(false)
            cadenacebolla = ""
            banderacebolla = 0
            
            if (banderapepperoni == 0 && banderapavo == 0 && banderasalchicha == 0 && banderajamon == 0 && banderaaceituna == 0)
            {
                BotonIniciarPedido.setEnabled(false)
            }
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
        
        cadenacinco = cadenajamon + cadenapepperoni + cadenapavo + cadenasalchicha + cadenaaceituna + cadenacebolla
    }

}
