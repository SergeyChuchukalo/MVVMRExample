//
//  PSegmentConstolViewModel.swift
//  MVVMRExample
//
//  Created by Sergey Chuchukalo on 9/23/18.
//  Copyright © 2018 Sergey. All rights reserved.
//

import UIKit

protocol PSegmentConstolViewModel {
    var callback: ((SegmentConstolViewState) -> Void)? { get set }
    /// View load
    func viewLoad()
    /// View appear
    func viewAppear()
    /// View disappear
    func viewDisappear()
    /// Default setup view controller
    ///––––––––––––––––––––––––––––––––––––––––
    /// Title
    func getTitle() -> String
    /// Segments title array
    func getSegmentTitle() -> [String]
    /// Selected segment
    func getSelectedSegment() -> Int
    /// Button title
    func getButtonTitle() -> String
    /// Buttom text color
    func getButtonTitle() -> UIColor
    /// Button color
    func getButtonBackground() -> UIColor
    /// Segment tint color
    func getSegmentTintColor() -> UIColor
    /// View background color
    func getBackgroundColor() -> UIColor
    /// Question color
    func getQuestion() -> UIColor
    /// Question text
    func getQuestion() -> String
    ///––––––––––––––––––––––––––––––––––––––––
    /// User interaction segment change
    func segmentValueChange(_ value: Int)
}
