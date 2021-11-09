//
//  MainTableView.swift
//  loginAndSignin
//
//  Created by Sufyan Arif on 09/11/2021.
//

import UIKit

class MainTableView: UIViewController {
    
    @IBOutlet weak var mainTableView: UITableView!
    
    let employes:[Employe] = [Employe.Tuba,Employe.Umer,Employe.Mariam,Employe.Ali,Employe.Sana,Employe.Saif]

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

extension MainTableView:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "cell"
        let cell:TableViewCell = mainTableView.dequeueReusableCell(withIdentifier: identifier) as! TableViewCell
        cell.Config(employes[indexPath.row])
        return cell
    }
    
    
}
