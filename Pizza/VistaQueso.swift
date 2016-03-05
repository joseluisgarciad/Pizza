//
//  VistaQueso.swift
//  Pizza
//
//  Created by Jose Luis Garcia Dueñas on 10/1/16.
//  Copyright © 2016 Jose Luis Garcia Dueñas. All rights reserved.
//

import UIKit

class VistaQueso: UIViewController,
UIPickerViewDataSource, UIPickerViewDelegate {
    
    var Quesos = ["Mozzarela", "Cheddar", "Parmesano", "Sin queso"];
 
    var resultado: String = ""
    var tamano: String = ""
    var Masa: String = ""
   
    override func viewWillAppear(animated: Bool) {
        LabelTamano.text = tamano
        LabelMasa.text = Masa
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.PickerQueso.dataSource = self;
        self.PickerQueso.delegate = self;
        Siguiente.enabled = false
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista=segue.destinationViewController as!VistaIngredientes
        sigVista.tamano = LabelTamano.text!
        sigVista.Masa = LabelMasa.text!
        sigVista.Queso = resultado
    }

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Quesos.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Quesos[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if(row == 0) { resultado = "Mozzarella" }
        else if(row == 1) { resultado = "Cheddar" }
        else if(row == 2) { resultado = "Parmesano" }
        else if(row == 3) { resultado = "Sin Queso" }
        Siguiente.enabled = true
    }

    @IBOutlet weak var Siguiente: UIButton!
    @IBOutlet weak var PickerQueso: UIPickerView!
    @IBOutlet weak var LabelTamano: UILabel!
    @IBOutlet weak var LabelMasa: UILabel!

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
