//
//  StyleGuid.swift
//  MVVMRExample
//
//  Created by Sergey Chuchukalo on 9/25/18.
//  Copyright © 2018 Sergey. All rights reserved.
//

import UIKit

struct StyleGuide {
    struct Color {
        static let green = UIColor(red: 81/255, green: 183/255, blue: 59/255, alpha: 1.0)
        static let yellow = UIColor(red: 210/255, green: 234/255, blue: 50/255, alpha: 1.0)
        static let red = UIColor(red: 205/255, green: 32/255, blue: 31/255, alpha: 1.0)
        static let greenAntipode = UIColor(red: 174/255, green: 72/255, blue: 196/255, alpha: 1.0)
        static let yellowAntipode = UIColor(red: 45/255, green: 21/255, blue: 205/255, alpha: 1.0)
        static let redAntipode = UIColor(red: 50/255, green: 223/255, blue: 224/255, alpha: 1.0)
    }
    struct Font {
        static let mainFont = UIFont.boldSystemFont(ofSize: 20)
    }
}
