//
//  SegmentConstolViewModel.swift
//  MVVMRExample
//
//  Created by Sergey Chuchukalo on 9/23/18.
//  Copyright © 2018 Sergey. All rights reserved.
//

import UIKit
class SegmentConstolViewModel: PSegmentConstolViewModel {
    var callback: ((SegmentConstolViewState) -> Void)?
    private let questionText = NSLocalizedString("SegmentConstolModel:QuestionText", comment: "What color?")
    private var selectedSegment: Int
    private let model = SegmentConstolModel()
    func getSelectedSegment() -> Int {
        return selectedSegment
    }
    
    init(_ selectSegment: Int) {
        selectedSegment = selectSegment
    }
    func segmentValueChange(_ value: Int) {
        selectedSegment = value
        callback?(.loaded)
    }
    
    func getTitle() -> String {
        return model.segmentNameArray[selectedSegment]
    }
    
    func getSegmentTitle() -> [String] {
        return model.segmentNameArray
    }
    
    func getButtonTitle() -> String {
        let detailText = NSLocalizedString("SegmentConstolModel:OpenDetail", comment: "open detail")
        return String(format:detailText, model.segmentNameArray[selectedSegment])
    }
    
    func getButtonTitle() -> UIColor {
        return model.segmentColorArray[selectedSegment]
    }
    
    func getButtonBackground() -> UIColor {
        return model.segmentAntipodeColorArray[selectedSegment]
    }
    
    func getBackgroundColor() -> UIColor {
        return model.segmentColorArray[selectedSegment]
    }
    
    func getSegmentTintColor() -> UIColor {
        return model.segmentAntipodeColorArray[selectedSegment]
    }
    func getQuestion() -> UIColor {
        return model.segmentAntipodeColorArray[selectedSegment]
    }
    func getQuestion() -> String {
        return questionText
    }
    
    func viewLoad() {

    }
    
    func viewAppear() {
        
    }
    
    func viewDisappear() {
        
    }
}
