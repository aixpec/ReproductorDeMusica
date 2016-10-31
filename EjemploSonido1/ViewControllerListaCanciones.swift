//
//  ViewControllerListaCanciones.swift
//  EjemploSonido1
//
//  Created by Andrés Ixpec on 31/10/16.
//  Copyright © 2016 Andrés Ixpec. All rights reserved.
//

import UIKit

class ViewControllerListaCanciones: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tblViewCanciones: UITableView!
    let cellReuseIdentifier = "cell"
    
    let listaCanciones = ListaCanciones()
    var cancion : Cancion!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tblViewCanciones.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        
        // This view controller itself will provide the delegate methods and row data for the table view.
        tblViewCanciones.delegate = self
        tblViewCanciones.dataSource = self
        
    }

    
    // number of rows in table view
    func tableView(_ _tblViewIngredientes: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.listaCanciones.devolverListaNombres().count
    }
    
    // create a cell for each table view row
    func tableView(_ _tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // create a new cell if needed or reuse an old one
        let cell:UITableViewCell = self.tblViewCanciones.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as UITableViewCell!
        
        // set the text from the data model
        cell.textLabel?.text = self.listaCanciones.devolverListaNombres()[(indexPath as NSIndexPath).row]
        

        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
   
        
        cancion = self.listaCanciones.Canciones[(indexPath as NSIndexPath).row]
        
        if let cell = tableView.cellForRow(at: indexPath) {
            if cell.isSelected {
                cell.accessoryType = .checkmark
            }
        }
 
        performSegue(withIdentifier: "ViewController", sender: self)
        
      
     
           }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
        if let cell = tableView.cellForRow(at: indexPath) {
            cell.accessoryType = .none
        }
        

        
        /*let ingrediente = vPizza.vIngredientesSel.index(of: vPizza.cIngredientes[(indexPath as NSIndexPath).row])
        vPizza.vIngredientesSel.remove(at: ingrediente!)*/
        
    }

    

    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "ViewController") {
            let sigVista = segue.destination as! ViewController
            sigVista.cancion = self.cancion

            
        }
    }
  

}
