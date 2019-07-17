//
//  ViewController.swift
//  XIBLoadExtension
//
//  Created by Don Mag on 7/17/19.
//  Copyright © 2019 Don Mag. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		
		let childView = PreSignupDataQuestionView()
		
		childView.translatesAutoresizingMaskIntoConstraints = false
		
		if let img = UIImage(named: "test") {
			childView.ivQuestionViewImage.image = img
		}
		childView.lblQuestion.text = "Successfully loaded\nfrom XIB"
		
		view.addSubview(childView)
		
		NSLayoutConstraint.activate([
			
			childView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
			childView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
			childView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),

			])
		
	}

}

