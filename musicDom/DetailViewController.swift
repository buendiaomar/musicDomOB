//
//  DetailViewController.swift
//  musicDom
//
//  Created by Consultant on 2/27/22.
//

import UIKit

class DetailViewController: UIViewController {
     
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var expLabel: UILabel!
    
    var albumName = ""
    var img = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionLabel.text = albumName
        imageView.image = img
        expLabel.text=setDetail()

    }

    func setDetail()->String{
        
        var explination=""
        if albumName == "20 Classic" {
           explination="The one a used to listen with my wife on weekends"
        }
        else
        if albumName == "Tiffany" {
               explination="The Tiffany is my wife's favorite"
        }
        if albumName == "ABBA" {
               explination="I always remember this album is perfect when you travel alone"
        }
        if albumName == "Rid Rock" {
               explination="My daughter like this album"
        }
        if albumName == "Kiss" {
               explination="One of my son's favorite"
        }
        
        return explination
    }
}
