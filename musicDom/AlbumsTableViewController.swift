//
//  AlbumsTableViewController.swift
//  musicDom
//
//  Created by Consultant on 2/27/22.
//

import UIKit

struct Album {
    var nameImage: String
    var labelAlbum: String
}

class AlbumsTableViewController: UITableViewController {
    let albums = [
        Album(nameImage: "album1", labelAlbum: "20 Classic Love Songs "),
        Album(nameImage: "album2", labelAlbum: "Introducing The Beatles"),
        Album(nameImage: "album3", labelAlbum: "Madonna The Best Album"),
        Album(nameImage: "album4", labelAlbum: "Neil Diamont Sweet Caroline"),
        Album(nameImage: "album6", labelAlbum: "U2 Best Pop Album"),
        Album(nameImage: "album7", labelAlbum: "Breatney Spears ..one more time"),
        Album(nameImage: "album8", labelAlbum: "Bob Marley Legend"),
        Album(nameImage: "album9", labelAlbum: "Essentials "),
        Album(nameImage: "album10", labelAlbum: "Dua Lipa Bang Bang"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return albums.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "albumCell", for: indexPath)

        // Configure the cell...
        
        let album = albums[indexPath.row]
        //cell.textLabel?.text = album.name
        cell.detailTextLabel?.text = album.labelAlbum
        
        cell.imageView?.image = UIImage(named: album.nameImage)

        return cell
    }
    
}
