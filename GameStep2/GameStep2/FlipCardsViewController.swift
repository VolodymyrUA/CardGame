//
//  FlipCardsViewController.swift
//  GameStep2
//
//  Created by Володимир Смульський on 1/11/18.
//  Copyright © 2018 Володимир Смульський. All rights reserved.
//

import UIKit

class FlipCardsViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate  {
   
    // задаємо по дефолту знач і записуємо в цю змінну з пікервю
    var getCardNumbers = 6
    // карточки які ми вибираємо pickerView
    let items = ["6","8","12","16","24"]
    
    // масив UIImage наших карточок із їх ідентифаєром
    let cartonImages : [UIImage] = [
        UIImage (named: "00")!,
        UIImage (named: "01")!,
        UIImage (named: "02")!,
        UIImage (named: "03")!,
        UIImage (named: "04")!,
        UIImage (named: "05")!,
        UIImage (named: "06")!,
        UIImage (named: "07")!,
        UIImage (named: "08")!,
        UIImage (named: "09")!,
        UIImage (named: "10")!,
        UIImage (named: "11")!,
        UIImage (named: "12")!,
        UIImage (named: "14")!,
        UIImage (named: "15")!,
        UIImage (named: "16")!,
        UIImage (named: "17")!,
        UIImage (named: "18")!,
        UIImage (named: "19")!,
        UIImage (named: "20")!,
        UIImage (named: "21")!,
        UIImage (named: "22")!,
        UIImage (named: "23")!,
        UIImage (named: "24")!,
        ]
    
  // let backgroundVar = #imageLiteral(resourceName: "background")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // кількість карток в рядку
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return getCardNumbers
    }
    // промальвуємо cell в collectionView
   
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // змінна в яку будемо кидати картинки
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        // селі ми присвоюємо картинку  (indexPath.row - індекс картинки )(тобто беремо 
        cell.ImageInCell.image = cartonImages[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       
    }
    

}
