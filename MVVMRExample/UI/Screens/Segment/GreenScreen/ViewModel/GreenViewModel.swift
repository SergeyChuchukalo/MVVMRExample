//
//  GreenViewModel.swift
//  MVVMRExample
//
//  Created by Sergey Chuchukalo on 9/26/18.
//  Copyright © 2018 Sergey. All rights reserved.
//

import UIKit

class GreenViewModel: PGreenViewModel {
    /// Constants
    private let title = NSLocalizedString("GreenViewModel:Title", comment: "Yellow title")
    private let success = NSLocalizedString("GreenViewModel:Success", comment: "Success!")
    /// Variable
    var callback: ((GreenViewState) -> Void)?
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
    /// Setup view controller
    ///––––––––––––––––––––––––––––––––––––––––
    /// Title text
    func getTitle() -> String {
        return title
    }
    /// Get background color
    func getBackground() -> UIColor {
        return StyleGuide.Color.green
    }
    /// Label text
    func getLabel() -> String {
        return success
    }
    /// label color
    func getLabel() -> UIColor {
        return StyleGuide.Color.greenAntipode
    }
    /// label font
    func getLabel() -> UIFont {
        return StyleGuide.Font.mainFont
    }
}
