//
//  SegmentConstolModel.swift
//  MVVMRExample
//
//  Created by Sergey Chuchukalo on 9/25/18.
//  Copyright © 2018 Sergey. All rights reserved.
//

import Foundation
private let greenTextLabel: String = NSLocalizedString("SegmentConstolModel:Green", comment: "Green")
private let yellowTextLabel: String = NSLocalizedString("SegmentConstolModel:Yellow", comment: "Yellow")
private let redTextLabel: String = NSLocalizedString("SegmentConstolModel:Red", comment: "Red")

enum SegmentIdentifiers: Int {
    case greenIdentifire = 0
    case yellowIdentifire
    case redIdentifire
    case blueIdentifire
}

struct SegmentConstolModel {
    let segmentNameArray = [greenTextLabel, yellowTextLabel, redTextLabel]
    let segmentColorArray = [StyleGuide.Color.green, StyleGuide.Color.yellow, StyleGuide.Color.red]
    let segmentAntipodeColorArray = [StyleGuide.Color.greenAntipode, StyleGuide.Color.yellowAntipode, StyleGuide.Color.redAntipode]
}
