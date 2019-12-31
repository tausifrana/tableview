//
//  ViewController.swift
//  tableViewDemo
//
//  Created by My MAC on 30/12/19.
//  Copyright © 2019 F.H. All rights reserved.
//

import UIKit

// Create Custom Cell
class customCell : UITableViewCell
{
    @IBOutlet weak var fruitImage: UIImageView!
    @IBOutlet weak var fruitName: UILabel!
}


class ViewController: UIViewController {

    // Create Simple Array
    let arrFruitName = ["Apple","Banana","Orange"]
    let arrFruitImages = ["apple.jpg","banana.jpg","orange.jpg"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
// Create Tableview Extension
extension ViewController : UITableViewDelegate , UITableViewDataSource
{
    // Two Mandatory method of tableview
    // 1. No of rows in tableview
    // 2. Cell for rows at index path to display
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrFruitName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! customCell
        
        cell.fruitName.text = arrFruitName[indexPath.row]
        cell.fruitImage.image = UIImage.init(named: arrFruitImages[indexPath.row])
        
        return cell
    }
}

// NOW RUN APP

// Done. Thanks you so much!!

