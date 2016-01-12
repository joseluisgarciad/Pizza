//
//  VistaIngredientes.swift
//  Pizza
//
//  Created by Jose Luis Garcia Dueñas on 10/1/16.
//  Copyright © 2016 Jose Luis Garcia Dueñas. All rights reserved.
//

import UIKit

class VistaIngredientes: UIViewController,
UIPickerViewDataSource, UIPickerViewDelegate {
    
    var Ingredientes = [ "Jamón", "Pepperoni", "Pavo", "Salchicha", "Aceituna", "Cebolla", "Pimiento", "Piña", "Anchoa"];
    
    var resultado: String = ""
    var tamano: String = ""
    var Masa: String = ""
    var Queso: String = ""
    
    override func viewWillAppear(animated: Bool) {
        LabelTamano.text = tamano
        LabelMasa.text = Masa
        LabelQueso.text = Queso

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.IngredientesPicker.dataSource = self;
        self.IngredientesPicker.delegate = self;
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista=segue.destinationViewController as!VistaCocinar
        sigVista.tamano = LabelTamano.text!
        sigVista.Masa = LabelMasa.text!
        sigVista.Queso = LabelQueso.text!
        sigVista.Ingredientes = resultado
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Ingredientes.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Ingredientes[row]
    }

    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if(row == 0) { resultado = "Jamón" }
        else if(row == 1) { resultado = "Pepperoni" }
        else if(row == 2) { resultado = "Pavo" }
        else if(row == 3) { resultado = "Salchicha" }
        else if(row == 4) { resultado = "Aceituna" }
        else if(row == 5) { resultado = "Cebolla" }
        else if(row == 6) { resultado = "Pimiento" }
        else if(row == 7) { resultado = "Piña" }
        else if(row == 8) { resultado = "Anchoa" }
    }

    @IBOutlet weak var IngredientesPicker: UIPickerView!
    @IBOutlet weak var LabelTamano: UILabel!
    @IBOutlet weak var LabelMasa: UILabel!
    @IBOutlet weak var LabelQueso: UILabel!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
