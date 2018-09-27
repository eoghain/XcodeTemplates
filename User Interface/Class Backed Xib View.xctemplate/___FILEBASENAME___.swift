//  ___FILEHEADER___

import UIKit

@IBDesignable class ___FILEBASENAME___: ___VARIABLE_subclassesFrom___ {

    var view: UIView!

    override init(frame: CGRect) {
        super.init(frame: frame)
        xibInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        xibInit()
    }

    func xibInit() {
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(view)
     }
    
     func loadViewFromNib() -> UIView {
         let bundle = Bundle(for: type(of: self))
         let nib = UINib(nibName: "___FILEBASENAME___", bundle: bundle)     
         let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
         return view
     }
     
     /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
         // Drawing code
     }
     */
}
