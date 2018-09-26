//
//  RedViewModel.swift
//  MVVMRExample
//
//  Created by Sergey Chuchukalo on 9/26/18.
//  Copyright © 2018 Sergey. All rights reserved.
//

import UIKit

class RedViewModel: PRedViewModel {
    /// Constants
    private let title = NSLocalizedString("RedViewModel:Title", comment: "Red title")
    private let image = UIImage(named: "CarCrash")
    /// Variable
    var callback: ((RedViewState) -> Void)?
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
    /// Title
    func getTitle() -> String {
        return title
    }
    /// Get background color
    func getBackground() -> UIColor {
        return StyleGuide.Color.red
    }
    /// Get Image
    func getImage() -> UIImage {
        return image ?? UIImage()
    }
}
