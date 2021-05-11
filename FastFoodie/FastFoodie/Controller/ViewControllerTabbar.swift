//
//  ViewControllerTabbar.swift
//  FastFoodie
//
//  Created by MacBook Pro on 28/4/21.
//

import UIKit

class ViewControllerTabbar: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray

    }
    

}
class SecondViewControllerTabbar: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .brown
    }
    

}
class ThirdViewControllerTabbar: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource {
   
    
    
    
    @IBOutlet weak var collectionviewtab3: UICollectionView!
    

    @IBOutlet weak var secondCollectionview: UICollectionView!
    
    @IBOutlet weak var thirdCollectionview: UICollectionView!

    var im = [UIImage(named: "21"),
              UIImage(named: "21"),
              UIImage(named: "21"),
              UIImage(named: "21"),
              UIImage(named: "21"),
              UIImage(named: "21")
    ]
    var iconeimage = [UIImage(named: "two"),
                      UIImage(named: "two"),
                      UIImage(named: "two"),
                      UIImage(named: "two"),
                      UIImage(named: "two"),
                      UIImage(named: "two")
            ]
    var Countrian = ["All","Bangali","Indian","Chinese","Thai","Japanese"]
    
    var fas = ["Fast Foodie","Fast Foodie","Fast Foodie","Fast Foodie","Fast Foodie","Fast Foodie"]
    
    var min = ["3.4 mi * 20 min","3.4 mi * 20 min","3.4 mi * 20 min","3.4 mi * 20 min","3.4 mi * 20 min","3.4 mi * 20 min"]
    
    var barger = ["Berger King","Berger King","Berger King","Berger King","Berger King","Berger King"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionviewtab3.delegate = self
        self.collectionviewtab3.dataSource = self
        
        self.secondCollectionview.delegate = self
        self.secondCollectionview.dataSource = self
        
        self.thirdCollectionview.delegate = self
        self.thirdCollectionview.dataSource = self

        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == collectionviewtab3{
            
            return Countrian.count
        }else if collectionView == secondCollectionview{
            
            return im.count
        }else {
            return im.count
            
        }
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        

        if  collectionView == collectionviewtab3{

            let cell = collectionviewtab3.dequeueReusableCell(withReuseIdentifier: "tab", for: indexPath) as! CollectionViewCellTab
            cell.CuntrianLabel.text = Countrian[indexPath.row]

            return cell
        }else if collectionView == secondCollectionview{

            let sell = secondCollectionview.dequeueReusableCell(withReuseIdentifier: "tab2", for: indexPath) as! CollectionViewCellTab2

            sell.imageone.image = im[indexPath.row]
            sell.imagetwo.image = iconeimage[indexPath.row]
            sell.labeloneincell2.text = fas[indexPath.row]
            sell.minuteintocell2.text = min[indexPath.row]
//            sell.labeloneincell2.text = "Fast Foodie"
//            sell.minuteintocell2.text = "3.4 mi * 20 min"

            return sell
        }else {

            let dell = thirdCollectionview.dequeueReusableCell(withReuseIdentifier: "tab3", for: indexPath) as! CollectionViewCellTab3

            dell.image2.image = im[indexPath.row]
            dell.label3incell2.text = barger[indexPath.row]
            dell.minute3incell3.text = min[indexPath.row]
//            dell.label3incell2.text = "Berger King"
//            dell.minute3incell3.text = "3.4 mi * 20 min"
            return dell
            
        }
        
    }
    

}

extension ThirdViewControllerTabbar: UICollectionViewDelegateFlowLayout{
    
//let Collectionviewcell = UICollectionViewCell()
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        
            return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        
        
      
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        ///let container = self.width - 28
        //let cellSize = container/4
        
        if collectionView  == collectionviewtab3 {
            
            return CGSize(width: 80, height: 40)
            
        }else if collectionView == secondCollectionview{
            
            return CGSize(width: 250, height: 250)
            
        }else{
            
            return CGSize(width: 200, height: 200)
        }
      //  if UICollectionViewCell == CollectionViewCellTab2
         
           
        
        
//        return CGSize(width: 200, height: 250)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
    


class FourViewControllerTabbar: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan

    }
    

}
class FiveViewControllerTabbar: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .blue
    }
    

}


