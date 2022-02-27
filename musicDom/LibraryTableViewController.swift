//
//  LibraryTableViewController.swift
//  musicDom
//
//  Created by Consultant on 2/27/22.
//

import UIKit

struct CuratedList {
    var imageName: String
    var labelAlbum: String
}

class LibraryTableViewController: UITableViewController {
    var image = UIImage()
    
    var curatedList = [
        
        CuratedList(imageName: "curated1", labelAlbum: "20 Classic"),
        CuratedList(imageName: "curated2", labelAlbum: "Tiffany"),
        CuratedList(imageName: "curated3", labelAlbum: "ABBA"),
        CuratedList(imageName: "curated4", labelAlbum: "Rid Rock"),
        CuratedList(imageName: "curated5", labelAlbum: "Kiss"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return curatedList.count
    }

    
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "libraryCell", for: indexPath)

         // Configure the cell...
         cell.textLabel?.text = "Section \(indexPath.section) Row \(indexPath.row)"
         let curatedList = curatedList[indexPath.row]
         cell.textLabel?.text = curatedList.labelAlbum
         
         cell.detailTextLabel?.text = curatedList.imageName
         cell.imageView?.image = UIImage(named: curatedList.imageName)
         
         return cell
     }
     
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
        vc?.albumName = curatedList[indexPath.row].labelAlbum
        vc?.img = UIImage(named: curatedList[indexPath.row].imageName)!
        self.navigationController?.pushViewController(vc!, animated: true)

    }
}

