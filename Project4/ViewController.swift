//
//  ViewController.swift
//  Project4
//
//  Created by Graphic Influence on 16/07/2019.
//  Copyright © 2019 marianne massé. All rights reserved.
//

import UIKit


class ViewController: UITableViewController {
    
    var websites = ["apple.com", "hackingwithswift.com"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Web Browser"
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return websites.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "website", for: indexPath)
        cell.textLabel?.text = websites[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let wvc = storyboard?.instantiateViewController(withIdentifier: "Web") as? WebViewController {
            wvc.websites = websites
            wvc.selectedWebsite = indexPath.row
            navigationController?.pushViewController(wvc, animated: true)
        }
    }
    
}
