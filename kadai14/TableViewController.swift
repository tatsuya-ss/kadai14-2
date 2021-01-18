//
//  TableViewController.swift
//  kadai14
//
//  Created by 坂本龍哉 on 2021/01/17.
//

import UIKit

class TableViewController: UITableViewController {
    private var fruits = ["りんご", "みかん", "ばなな", "パイナップル"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "CheckTableViewCell", bundle: nil), forCellReuseIdentifier: CheckTableViewCell.reuseIdentifier)
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return fruits.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CheckTableViewCell.reuseIdentifier, for: indexPath) as! CheckTableViewCell

        cell.configure(isChecked: indexPath.row % 2 == 1, name: fruits[indexPath.row])

        return cell
    }

    @IBAction private func cancel(segue: UIStoryboardSegue) {
    }

    @IBAction private func exit(segue: UIStoryboardSegue) {
        let addView = segue.source as? AddViewController
        fruits.append(addView!.additionName)
        tableView.reloadData()
    }
}
