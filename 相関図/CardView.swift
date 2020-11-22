//
//  CardView.swift
//  相関図
//
//  Created by 土屋絢大 on 2020/11/22.
//  Copyright © 2020 Kenta Tsuchiya. All rights reserved.
//

import UIKit

@IBDesignable
class CardView: UIView{
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var label: UILabel!
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
         loadNib()
    }
    
    
    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
        super.init(coder: coder)
        loadNib()
    }
    
    func loadNib(){
        let bundle = Bundle(for:  type(of: self))
        let nib = UINib(nibName: "CardView", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        view.frame = self.bounds
        view.backgroundColor = UIColor.red
        self.addSubview(view)
        
        imageView.image = UIImage(systemName: "keyboard")
        
        label.text = "test"
    }
}
