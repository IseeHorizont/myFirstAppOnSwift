//
//  ViewController.swift
//  getRandomImage
//
//  Created by Митрофанов on 12.09.2020.
//  Copyright © 2020 Evgeny Moiseev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var showImage: UIImageView!
    
    @IBAction func getImage(_ sender: Any) {
        // https://picsum.photos/200
        showImage.layer.cornerRadius = 5
        showImage.layer.borderWidth = 1
        showImage.layer.borderColor = UIColor.black.cgColor
        let url = URL(string: "https://picsum.photos/200")
        let data = try? Data(contentsOf: url!)
        let image = UIImage(data: data!)
        self.showImage.image = image
        //showImage.layer.cornerRadius = 5
        //showImage.layer.borderWidth = 1
        //showImage.layer.borderColor = UIColor.black.cgColor
        
    }
}
