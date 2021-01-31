//
//  ViewController.swift
//  Programmatic_UI
//
//  Created by Thin Myat Noe on 31/1/21.
//

import UIKit

class ViewController: UIViewController {
	
	var textLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .white
		let layout = view.layoutMarginsGuide
		
		// Label
		textLabel = UILabel()
		textLabel.text = "Hey, Listen!"
		
		view.addSubview(textLabel)
		textLabel.translatesAutoresizingMaskIntoConstraints = false
		textLabel.topAnchor.constraint(equalTo: layout.topAnchor).isActive = true
		textLabel.leadingAnchor.constraint(equalTo: layout.leadingAnchor).isActive = true
		
		// Button
		let button = UIButton()
		button.setTitle("Answer", for: .normal)
		view.addSubview(button)
		
		button.translatesAutoresizingMaskIntoConstraints = false
		button.centerXAnchor.constraint(equalTo: layout.centerXAnchor).isActive = true
		button.centerYAnchor.constraint(equalTo: layout.centerYAnchor).isActive = true
		button.setTitleColor(.white, for: .normal)
		button.backgroundColor = .blue
		
		button.titleEdgeInsets.top = 0
		button.titleEdgeInsets.left = -10
		button.titleEdgeInsets.bottom = 0
		button.titleEdgeInsets.right = 10
		
		button.titleEdgeInsets = UIEdgeInsets(top: 10, left: -10, bottom: 10, right: 10)
		
		button.contentEdgeInsets = UIEdgeInsets.init(top: 10, left: 30, bottom: 10, right: 10)
		
		button.addTarget(self, action: #selector(answerAction), for: .touchUpInside)
	}
	
	@objc func answerAction(){
		textLabel.text = "It's Dangerous to go alone at night"
	}
}

