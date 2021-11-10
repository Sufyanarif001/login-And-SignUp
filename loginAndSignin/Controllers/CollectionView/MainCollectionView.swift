//
//  MainCollectionView.swift
//  loginAndSignin
//
//  Created by Sufyan Arif on 09/11/2021.
//

import UIKit

class MainCollectionView: UIViewController {
    
    let employes:[Employe] = [Employe.Tuba,Employe.Umer,Employe.Mariam,Employe.Ali,Employe.Sana,Employe.Saif]

    @IBOutlet weak var mainCollection: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension MainCollectionView:UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return employes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let identifier:String = "cell"
        let cell:CollectionViewCell = mainCollection.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! CollectionViewCell
        cell.Configuration(employes[indexPath.row])
        
        cell.layer.cornerRadius = 10
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.blue.cgColor
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (collectionView.frame.width - 10)/2
        return CGSize(width: size, height: size)
    }
    
    
}
