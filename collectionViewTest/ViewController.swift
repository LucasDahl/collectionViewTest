//
//  ViewController.swift
//  collectionViewTest
//
//  Created by Lucas Dahl on 1/7/19.
//  Copyright © 2019 Lucas Dahl. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    // The array to populate the cells(works both for the image and for the viewController id)
    var arrayImages = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add values to the array
        arrayImages = ["1", "2"]
        
    }

    
    // For the total number of cells in the collectionView
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayImages.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // Make the cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        
        // Create the image property
        let imageViews = cell.viewWithTag(1) as! UIImageView
        
        // Set the image
        imageViews.image = UIImage(named: arrayImages[indexPath.row])
        
        // Return the cell
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        // Name property to allow the abailty to change viewControllers
        let name = arrayImages[indexPath.row]
        
        // Set up the viewController for the cell the user selected
        let vc = storyboard?.instantiateViewController(withIdentifier: name)
        
        // Present the selected cell's viewController
        present(vc!, animated: true, completion: nil)
        
        
        
    }
    

}

