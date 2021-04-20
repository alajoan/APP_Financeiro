//
//  MainViewController.swift
//  Financeiro
//
//  Created by Jonathan Alajoan Rocha on 25/03/21.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    // add shadow on cell
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        spendingArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let moneyCell = spendingArray[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SpendingCell") as! TableViewCell
        cell.setSpendingCell(spendingCell: moneyCell)
       
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
      
            return 110 // altura
        
    }
    
    @IBOutlet weak var mainTableView: UITableView!
    
    
    var spendingArray: [MoneyData] = []
    
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        mainTableView.delegate = self;
        mainTableView.dataSource = self;
        
        self.mainTableView.rowHeight = UITableView.automaticDimension
        self.mainTableView.estimatedRowHeight = 90
        spendingArray = fillArray()
        
        
        
        
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    
    
       
    
    
    
    func fillArray() -> [MoneyData] {
        var tempArray:[MoneyData] = []
        
        let spending1 = MoneyData(spending: 10.00, nameOfSpending: "Burgão", dateOfSpending: Date.init(), category: "food")
        let spending2 = MoneyData(spending: 20.00, nameOfSpending: "Coquinha e batatas", dateOfSpending: Date.init(), category: "food")
        let spending3 = MoneyData(spending: 800.00, nameOfSpending: "Viagem", dateOfSpending: Date.init(), category: "trip")
        let spending4 = MoneyData(spending: 40.00, nameOfSpending: "Uber", dateOfSpending: Date.init(), category: "transport")
        tempArray.append(spending1)
        tempArray.append(spending2)
        tempArray.append(spending3)
        tempArray.append(spending4)
        return tempArray
    }

    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
