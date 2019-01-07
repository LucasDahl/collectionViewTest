//
//  ViewController.swift
//  collectionViewTest
//
//  Created by Lucas Dahl on 1/7/19.
//  Copyright © 2019 Lucas Dahl. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var arrayImages = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayImages = ["1", "2"]
        
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! UICollectionViewCell
        
        let imageViews = cell.viewWithTag(1) as! UIImageView
        
        imageViews.image = UIImage(named: arrayImages[indexPath.row])
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let name = arrayImages[indexPath.row]
        let vc = storyboard?.instantiateViewController(withIdentifier: name)
        present(vc!, animated: true, completion: nil)
        
        
        
    }
    

}

