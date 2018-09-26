//
//  SegmentConstolViewModel.swift
//  MVVMRExample
//
//  Created by Sergey Chuchukalo on 9/23/18.
//  Copyright © 2018 Sergey. All rights reserved.
//

import UIKit
class SegmentConstolViewModel: PSegmentConstolViewModel {
    /// Variable
    var callback: ((SegmentConstolViewState) -> Void)?
    /// Private constants
    private let questionText = NSLocalizedString("SegmentConstolModel:QuestionText", comment: "What color?")
    private let detailText = NSLocalizedString("SegmentConstolModel:OpenDetail", comment: "Open detail")
    private var selectedSegment: Int
    private let model = SegmentConstolModel()
    /// Detail state of view model
    ///––––––––––––––––––––––––––––––––––––––––
    /// View load
    func viewLoad() {
        /// You can create in this method call to api
    }
    /// View appear
    func viewAppear() {
        /// You can update UI 
    }
    /// View disappear
    func viewDisappear() {
        /// You can create saving data from this model
    }
    /// Initialize
    init(_ selectSegment: Int) {
        selectedSegment = selectSegment
    }
    /// Setup view controller
    ///––––––––––––––––––––––––––––––––––––––––
    /// Title
    func getTitle() -> String {
        return model.segmentNameArray[selectedSegment]
    }
    /// Segments title array
    func getSegmentTitle() -> [String] {
        return model.segmentNameArray
    }
    /// Selected segment
    func getSelectedSegment() -> Int {
        return selectedSegment
    }
    /// Button title
    func getButtonTitle() -> String {
        return String(format:detailText, model.segmentNameArray[selectedSegment])
    }
    /// Buttom text color
    func getButtonTitle() -> UIColor {
        return model.segmentColorArray[selectedSegment]
    }
    /// Button color
    func getButtonBackground() -> UIColor {
        return model.segmentAntipodeColorArray[selectedSegment]
    }
    /// View background color
    func getBackgroundColor() -> UIColor {
        return model.segmentColorArray[selectedSegment]
    }
    /// Segment tint color
    func getSegmentTintColor() -> UIColor {
        return model.segmentAntipodeColorArray[selectedSegment]
    }
    /// Question color
    func getQuestion() -> UIColor {
        return model.segmentAntipodeColorArray[selectedSegment]
    }
    /// Question text
    func getQuestion() -> String {
        return questionText
    }
    ///––––––––––––––––––––––––––––––––––––––––
    /// User interaction segment change
    /// Segment change
    func segmentValueChange(_ value: Int) {
        selectedSegment = value
        callback?(.loaded)
    }
    /// Button touch
    func buttonTouch() {
        switch selectedSegment {
        case SegmentIdentifiers.greenIdentifire.rawValue:
             callback?(.openGreenScreen)
        case SegmentIdentifiers.yellowIdentifire.rawValue:
             callback?(.openYellowScreen)
        case SegmentIdentifiers.redIdentifire.rawValue:
             callback?(.openRedScreen)
        default:
            break
        }
    }
}
