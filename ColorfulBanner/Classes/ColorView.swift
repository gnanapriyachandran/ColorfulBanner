//
//  ColorView.swift
//  ColorfulBanner
//
//  Created by Gnanapriya C on 02/10/20.
//

import UIKit

public class ColorView: UIView {
    
    @IBOutlet public weak var titleLabel: UILabel!
    public let colors : [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
    public var colorCounter = 0
    
    public func loadViewFromNib() -> UIView {
        let bundle = Bundle(for: ColorView.self)
        let nib = UINib(nibName: "ColorView", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        if #available(iOS 10.0, *) {
            let scheduledTimer = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { (timer) in
                UIView.animate(withDuration: 2.0) {
                     view.backgroundColor = self.colors[self.colorCounter % 6]
                    self.colorCounter += 1
                }
            }
            scheduledTimer.fire()
        } else {
            // Fallback on earlier versions
        }
        return view
    }
    
    
}
