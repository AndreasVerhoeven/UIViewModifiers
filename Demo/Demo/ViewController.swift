//
//  ViewController.swift
//  Demo
//
//  Created by Andreas Verhoeven on 16/05/2021.
//

import UIKit


class ViewController: UITableViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		
		let redView = UIView().alpha(0.5).backgroundColor(.systemRed).clipsToBounds().with(\.frame, as: CGRect(x: 0, y: 40, width: 100, height: 40))
		let greenView = UIView().with { $0.frame = CGRect(x: 100, y: 100, width: 100, height: 100) }.alpha(0.5).backgroundColor(.orange)
		
		view.addSubview(redView)
		view.addSubview(greenView)
	}


	override func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}

	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 0
	}
}

