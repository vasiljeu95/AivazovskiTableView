//
//  ViewController.swift
//  AivazovskiTableView
//
//  Created by Stepan Vasilyeu on 1/18/20.
//  Copyright © 2020 Stepan Vasilyeu. All rights reserved.
//

import UIKit

class PictureViewController: UIViewController {
    
    @IBOutlet var pictureImage: UIImageView!
    @IBOutlet var pictureTextLabel: UILabel!
    
    var pictureTitle: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pictureImage.image = UIImage(named: pictureTitle)
        pictureTextLabel.text = pictureTitle
    }

}

