//
//  PreSignupDataQuestionView.swift
//  XIBLoadExtension
//
//  Created by Don Mag on 7/17/19.
//  Copyright © 2019 Don Mag. All rights reserved.
//

import UIKit

class PreSignupDataQuestionView : NibView
{
	@IBOutlet weak var vMainContainer: UIView!
	@IBOutlet weak var vQuestionViewContainer: UIView!
	@IBOutlet weak var ivQuestionViewImage: UIImageView!
	@IBOutlet weak var lblQuestion: UILabel!
}

class NibView : UIView
{
	var view: UIView!
	
	override init(frame: CGRect)
	{
		super.init(frame: frame)
		xibSetup()
	}
	
	required init?(coder aDecoder: NSCoder)
	{
		super.init(coder: aDecoder)
		xibSetup()
	}
}

extension NibView
{
	func xibSetup()
	{
		backgroundColor = UIColor.clear
		
		view = loadNib()
		view.frame = bounds
		addSubview(view)
		
		view.translatesAutoresizingMaskIntoConstraints = false
		addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[childView]|",
													  options: [],
													  metrics: nil,
													  views: ["childView": view!]))
		addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[childView]|",
													  options: [],
													  metrics: nil,
													  views: ["childView": view!]))
	}
}

extension UIView
{
	func loadNib() -> UIView
	{
		let bundle = Bundle(for: type(of: self))
		let nibName = type(of: self).description().components(separatedBy: ".").last!
		let nib = UINib(nibName: nibName, bundle: bundle)
		
		// Error pops here
		return nib.instantiate(withOwner: self, options: nil).first as! UIView
	}
}

