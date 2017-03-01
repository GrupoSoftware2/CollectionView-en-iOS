//
//  NormalViewController.swift
//  CollectionView en iOS
//
//  Created by alumno on 28/02/17.
//  Copyright © 2017 alumno. All rights reserved.
//

import UIKit

private let reuseIdentifier = "celdanormal"

class NormalViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    var items = Array<Item>()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for i in 0...7{
            let item = Item()
            item.nombre = "Item \(i)"
            item.precio = Double(i) * 100.0
            item.imagen = UIImage(named:"image_\(i)")
            
            items.append(item)
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ItemCell
        
        let indice = indexPath.row
        
        let item = items[indice]
        
        cell.lblNombre.text = item.nombre
        cell.lblPrecio.text = "S/. \(item.precio!)"
        cell.imgItem.image = item.imagen
        
        cell.layer.borderWidth = 1
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let indice = indexPath.row
        
        let item = items[indice]
        
    
        self.performSegue(withIdentifier: "siguiente", sender: item)
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let siguienteViewController:SiguienteViewController = segue.destination as! SiguienteViewController
        
        siguienteViewController.parametro = sender as! Item
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
