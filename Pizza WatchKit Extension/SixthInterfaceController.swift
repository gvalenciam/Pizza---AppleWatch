//
//  SixthInterfaceController.swift
//  Pizza
//
//  Created by Gerardo Valencia on 12/27/15.
//  Copyright © 2015 Gerardo Valencia. All rights reserved.
//

import WatchKit
import Foundation


class SixthInterfaceController: WKInterfaceController {

    @IBOutlet var LabelUno: WKInterfaceLabel!
    @IBOutlet var LabelDos: WKInterfaceLabel!
    @IBOutlet var LabelTres: WKInterfaceLabel!
    @IBOutlet var LabelCuatro: WKInterfaceLabel!
    @IBOutlet var LabelCinco: WKInterfaceLabel!
    @IBOutlet var LabelSeis: WKInterfaceLabel!
    @IBOutlet var BotonConfirmar: WKInterfaceButton!
    
    
    @IBAction func botonEditar() {
        
        cadenajamon = ""
        cadenapepperoni = ""
        cadenapavo = ""
        cadenasalchicha = ""
        cadenaaceituna = ""
        cadenacebolla = ""
        
        pushControllerWithName("SecondInterfaceController", context: nil)
    }
    @IBAction func botonConfirmar() {
        
        pushControllerWithName("FirstInterfaceController", context: nil)
        cadenauno = "Pedido Listo!!!"
        cadenajamon = ""
        cadenapepperoni = ""
        cadenapavo = ""
        cadenasalchicha = ""
        cadenaaceituna = ""
        cadenacebolla = ""
        
        banderajamon = 0
        banderapepperoni = 0
        banderapavo = 0
        banderasalchicha = 0
        banderaaceituna = 0
        banderacebolla = 0
        
        contador = 0
        
    }
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        if (contador <= 0)
        {
            super.willActivate()
            LabelUno.setText("Por favor")
            LabelDos.setText("seleccione")
            LabelTres.setText("al")
            LabelCuatro.setText("menos")
            LabelCinco.setText("un")
            LabelSeis.setText("ingrediente")
            BotonConfirmar.setEnabled(false)
            
        }
        else if (contador == 6)
        {
            super.willActivate()
            LabelUno.setText("Por favor")
            LabelDos.setText("seleccione")
            LabelTres.setText("como")
            LabelCuatro.setText("máximo")
            LabelCinco.setText("cinco")
            LabelSeis.setText("ingredientes")
            BotonConfirmar.setEnabled(false)
        }
        else
        {
            super.willActivate()
            LabelUno.setText("Tamaño:" + cadenados)
            LabelDos.setText("Masa:" + cadenatres)
            LabelTres.setText("Queso:" + cadenacuatro)
            LabelCuatro.setText(cadenajamon + " " + cadenapepperoni)
            LabelCinco.setText(cadenapavo + " " + cadenasalchicha)
            LabelSeis.setText(cadenaaceituna + " " + cadenacebolla)
            BotonConfirmar.setEnabled(true)
        }
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
