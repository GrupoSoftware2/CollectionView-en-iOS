//
//  SiguienteViewController.swift
//  CollectionView en iOS
//
//  Created by alumno on 28/02/17.
//  Copyright © 2017 alumno. All rights reserved.
//

import UIKit

class SiguienteViewController: UIViewController {
    
    @IBOutlet weak var imagenItem: UIImageView!
    
    @IBOutlet weak var lblNombre: UILabel!

    @IBOutlet weak var lblPrecio: UILabel!
    
    @IBOutlet weak var lblDescripcion: UILabel!
    
    var parametro:Item!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblNombre.text = parametro.nombre
        lblPrecio.text = "S/. \(parametro.precio!)"
        imagenItem.image = parametro.imagen
        lblDescripcion.text = "Este es una brebe descripcion del  \(parametro.nombre!)"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
