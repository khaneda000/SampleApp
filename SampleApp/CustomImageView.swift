//
//  CustomImageView.swift
//  SampleApp
//
//  Created by 羽田 健太郎 on 2017/06/05.
//  Copyright © 2017年 羽田 健太郎. All rights reserved.
//

import Foundation

@IBDesignable class CustomImageView: UIImageView {
    @IBInspectable var cornerRadius: CGFloat = 2.0{
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }
    @IBInspectable var borderColor: UIColor = UIColor.white
        {
        didSet{
            self.layer.borderColor = borderColor.cgColor
        }
    }
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    override func draw(_ rect: CGRect) {
        // 角丸
        super.draw(rect)
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = (cornerRadius > 0)
    }
}
