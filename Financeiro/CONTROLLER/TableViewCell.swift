//
//  TableViewCell.swift
//  Financeiro
//
//  Created by Jonathan Alajoan Rocha on 12/04/21.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var spendingName: UILabel!
    @IBOutlet weak var dateOfSpending: UILabel!
    @IBOutlet weak var moneySpent: UILabel!
    @IBOutlet weak var CellView: UIView!
    
    
    public func setSpendingCell(spendingCell: MoneyData) {
        
        switch spendingCell.category {
        case "food":
            categoryImage.image = UIImage(systemName: "cart.fill")
            break
        case "trip":
            categoryImage.image = UIImage(systemName: "airplane.circle.fill")
            break
        case "transport":
            categoryImage.image = UIImage(systemName: "car")
            break
        default:
           categoryImage.image = UIImage(systemName: "cart.fill")
        }
        
        spendingName.text = spendingCell.nameOfSpending
        dateOfSpending.text = "\(spendingCell.dateOfSpending)"
        moneySpent.text = "R$\(spendingCell.spending)"
        
        
           CellView.layer.shadowRadius = 10
           CellView.layer.shadowOpacity = 0.1
           CellView.layer.shadowOffset = CGSize(width: -1, height: 1)
        CellView.layer.cornerRadius = 10
     
    }
    //Apply params
    

}
