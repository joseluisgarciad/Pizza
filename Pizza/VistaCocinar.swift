//
//  VistaCocinar.swift
//  Pizza
//
//  Created by Jose Luis Garcia Dueñas on 10/1/16.
//  Copyright © 2016 Jose Luis Garcia Dueñas. All rights reserved.
//

import UIKit

class VistaCocinar: UIViewController {
    
    var tamano: String = ""
    var Masa: String = ""
    var Queso: String = ""
    var Ingredientes: String = ""
       
    override func viewDidLoad() {
        super.viewDidLoad()
        LabelTamano.text = tamano
        LabelMasa.text = Masa
        LabelQueso.text = Queso
        LabelIngredientes.text = Ingredientes

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var LabelTamano: UILabel!
    @IBOutlet weak var LabelMasa: UILabel!
    @IBOutlet weak var LabelQueso: UILabel!
    @IBOutlet weak var LabelIngredientes: UILabel!
    @IBAction func ButtonHorno(sender: AnyObject) {
        mensaje ("El pedido Tardará 30 min")
    }
    
    func mensaje (Texto: String) {
        let alertController = UIAlertController(title: "Pizza en Proceso", message:
            Texto, preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Cerrar", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
