//
//  ViewController.swift
//  RoundedCell
//
//  Created by Bhabani on 09/02/20.
//  Copyright © 2020 Bhabani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "cell")
    }


}
extension ViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.newLabel.text = "hello"
        cell.newLabel.backgroundColor = .red
        cell.secondLabel.backgroundColor = .green
        cell.secondLabel.text = "4"
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = CGSize(width: collectionView.frame.width/2.1, height: collectionView.frame.width/2.1)
        return size
    }
    
    
}

