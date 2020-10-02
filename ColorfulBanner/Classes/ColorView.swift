//
//  ColorView.swift
//  ColorfulBanner
//
//  Created by Gnanapriya C on 02/10/20.
//

import UIKit

class ColorView: UIView {

   let colors : [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
    
    var colorCounter = 0
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        xibSetup()
    }
    
    public func xibSetup() {
        let BannerView = loadViewFromNib()
        BannerView.frame = self.bounds
        if #available(iOS 10.0, *) {
            let scheduledTimer = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { (timer) in
                UIView.animate(withDuration: 2.0) {
                    BannerView.layer.backgroundColor = self.colors[self.colorCounter % 6].cgColor
                    self.colorCounter += 1
                }
            }
            scheduledTimer.fire()
            self.addSubview(BannerView)
        } else {
            // Fallback on earlier versions
        }
    }
    
    public func loadViewFromNib() -> UIView {
        let nib = UINib(nibName: "ColorView", bundle: nil)
        return (nib.instantiate(withOwner: self, options: nil).first as? UIView)!
    }
    

}
