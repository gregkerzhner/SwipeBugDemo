//
//  ViewController.swift
//  Demo
//
//  Created by Greg Kerzhner on 5/23/17.
//  Copyright © 2017 Greg Kerzhner. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

  let tableView = UITableView()

  override func viewDidLoad() {
    super.viewDidLoad()

    view = tableView
    tableView.register(UITableViewCell.self, forCellReuseIdentifier: "foo")
    tableView.delegate = self
    tableView.dataSource = self
    tableView.allowsSelectionDuringEditing = false
  }

  func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
    let deleteAction = UITableViewRowAction(style: .normal, title: " Remove") {(_, indexPath) in print("OK") }
    return [deleteAction]
  }

  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {}

  func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {}

  func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
    return indexPath
  }


  func tableView(_ tableView: UITableView, willBeginEditingRowAt indexPath: IndexPath) {
    print("Will edit")
  }

  func tableView(_ tableView: UITableView, didEndEditingRowAt indexPath: IndexPath?) {
    print("Did end edit")
  }

  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 80
  }

  func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
    
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

    return tableView.dequeueReusableCell(withIdentifier: "foo") ?? UITableViewCell()
  }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
  }
}
