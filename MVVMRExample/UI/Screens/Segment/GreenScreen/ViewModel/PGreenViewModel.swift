//
//  PGreenViewModel.swift
//  MVVMRExample
//
//  Created by Sergey Chuchukalo on 9/26/18.
//  Copyright © 2018 Sergey. All rights reserved.
//

import UIKit

protocol PGreenViewModel {
    var callback: ((GreenViewState) -> Void)? { get set }
    /// View load
    func viewLoad()
    /// View appear
    func viewAppear()
    /// View disappear
    func viewDisappear()
    /// Setup view controller
    ///––––––––––––––––––––––––––––––––––––––––
    /// Title text
    func getTitle() -> String
    /// Get background color
    func getBackground() -> UIColor
    /// Label text
    func getLabel() -> String
    /// label color
    func getLabel() -> UIColor
    /// label font
    func getLabel() -> UIFont
}
