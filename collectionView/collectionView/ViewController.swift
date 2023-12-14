//
//  ViewController.swift
//  collectionView
//
//  Created by dam2 on 14/12/23.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let screenWidth = collectionView.frame.width
        let celdaWidth = screenWidth/2 - 8
        
        return CGSize(width: screenWidth, height: celdaWidth)
    }
        
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "celda", for: indexPath) as! MiCelda2
        cell.miLabel.text = String(indexPath.item)
        cell.backgroundColor = UIColor.blue
        
        return cell
    }
    

    
}

