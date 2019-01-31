//
//  CGRect.swift
//  FivKit
//
//  Created by wuwei on 2019/01/31.
//  Copyright © 2019年 5v. All rights reserved.
//

import Foundation
import UIKit

extension CGRect {
    func scaleBy(scalex:CGFloat, scaley:CGFloat, anchorPosition:CGPoint) -> CGRect {
        return self.offsetBy(dx: -anchorPosition.x, dy: -anchorPosition.y)
            .applying(CGAffineTransform(scaleX: scalex, y: scaley))
            .offsetBy(dx: anchorPosition.x, dy: anchorPosition.y)
    }

    func copyBy(dx:CGFloat = 0, dy:CGFloat = 0, dw:CGFloat = 0, dh:CGFloat = 0) -> CGRect {
        return CGRect(x: self.origin.x + dx, y: self.origin.y + dy, width: self.width + dw, height: self.height + dh)
    }

    func resetBy(x:CGFloat? = nil, y:CGFloat? = nil, w:CGFloat? = nil, h:CGFloat? = nil) -> CGRect {
        return CGRect(x: x ?? self.origin.x, y: y ?? self.origin.y, width: w ?? self.width, height: h ?? self.height)
    }
}
