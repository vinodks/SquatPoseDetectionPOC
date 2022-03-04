//
//  Circle.swift
//  VisionApp
//
//  Created by Harinder Rana on 15/12/21.
//

import Foundation
import SwiftUI

struct CustomCircle: Shape {
    var size: CGSize
    var point: CGPoint

    func path(in rect: CGRect) -> Path {
    
        var path = Path()
        let radius = rect.size.width / 2
            // path.move(to: point)
        
        
        path.addArc(center: point, radius: radius, startAngle: .degrees(0), endAngle: .degrees(360), clockwise: false)

        //path.addArc(center: CGPoint(x: radius, y: radius / 2), radius: radius, startAngle: .degrees(0), endAngle: .degrees(360), clockwise: false)
            

        return path//.applying(CGAffineTransform.identity.scaledBy(x: size.width, y: size.height))
            //.applying(CGAffineTransform(scaleX: -1, y: -1).translatedBy(x: -size.width, y: -size.height))

    }

}
