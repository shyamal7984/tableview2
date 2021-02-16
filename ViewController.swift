//
//  ViewController.swift
//  last
//
//  Created by Shyamal on 12/02/21.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    private var data: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 0...1000 {
                  data.append("\(i)")
             }
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
         let alertController = UIAlertController(title: "Hint", message: "You have selected row \(indexPath.row).", preferredStyle: .alert)
            
         let alertAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            
         alertController.addAction(alertAction)
            
         present(alertController, animated: true, completion: nil)
            
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseldentifier")as!CustomtableViewCell
         let text = data[indexPath.row]
         cell.lable.text = text
        if indexPath.row % 2 == 0 {
                 cell.contentView.backgroundColor = UIColor.red
    } else {
                 cell.contentView.backgroundColor = UIColor.lightGray
    }
                 return cell
    }

}

