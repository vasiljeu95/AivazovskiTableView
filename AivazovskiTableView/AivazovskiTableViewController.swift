//
//  AivazovskiTableViewController.swift
//  AivazovskiTableView
//
//  Created by Stepan Vasilyeu on 1/18/20.
//  Copyright © 2020 Stepan Vasilyeu. All rights reserved.
//

import UIKit

class AivazovskiTableViewController: UITableViewController {

    var aivazovskiPicture = Array.aivazovskiPictureArray
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return aivazovskiPicture.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pictureCell", for: indexPath)
        
        cell.textLabel?.text = self.aivazovskiPicture[indexPath.row]
        
        return cell
    }
    
    // MARK: - Table View Delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let pictureName = aivazovskiPicture[indexPath.row]
        performSegue(withIdentifier: "showPicture", sender: pictureName)
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showPicture" {
            let pictureVC = segue.destination as! PictureViewController
            pictureVC.pictureTitle = sender as? String
        }
    }

}
