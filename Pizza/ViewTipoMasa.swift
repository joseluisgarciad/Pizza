//
//  ViewTipoMasa.swift
//  Pizza
//
//  Created by Jose Luis Garcia Dueñas on 9/1/16.
//  Copyright © 2016 Jose Luis Garcia Dueñas. All rights reserved.
//

import UIKit

class ViewTipoMasa: UIViewController,
    UIPickerViewDataSource, UIPickerViewDelegate {
    
    var Masas = ["Delgada", "Crujiente", "Gruesa"];
    var resultado: String = ""
    var tamano: String = ""
   
    override func viewWillAppear(animated: Bool) {
        LabelTamano.text = tamano
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.PickerMasa.dataSource = self;
        self.PickerMasa.delegate = self;
        Siguiente.enabled = false
    }
    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista=segue.destinationViewController as!VistaQueso
        sigVista.tamano = LabelTamano.text!
        sigVista.Masa = resultado
    }

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
    return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return Masas.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return Masas[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if(row == 0) { resultado = "Delgada" }
        else if(row == 1) { resultado = "Crujiente" }
        else if(row == 2) { resultado = "Gruesa" }
        Siguiente.enabled = true
    }

    @IBOutlet weak var Siguiente: UIButton!
    @IBOutlet weak var PickerMasa: UIPickerView!

    @IBOutlet weak var LabelTamano: UILabel!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
