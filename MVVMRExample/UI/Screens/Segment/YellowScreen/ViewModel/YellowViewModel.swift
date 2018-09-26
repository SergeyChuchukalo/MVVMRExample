//
//  YellowViewModel.swift
//  MVVMRExample
//
//  Created by Sergey Chuchukalo on 9/26/18.
//  Copyright © 2018 Sergey. All rights reserved.
//

import UIKit

class YellowViewModel: PYellowViewModel {
    /// Constants
    private let title = NSLocalizedString("YellowViewModel:Title", comment: "Yellow title")
    private let pageURL = URL(string: "https://en.wikipedia.org/wiki/Traffic_light")
    /// Variable
    var callback: ((YellowViewState) -> Void)?
    /// View load
    func viewLoad() {
        
    }
    /// View appear
    func viewAppear() {
        
    }
    /// View disappear
    func viewDisappear() {
        
    }
    /// Setup view controller
    ///––––––––––––––––––––––––––––––––––––––––
    /// Title
    func getTitle() -> String {
        return title
    }
    /// Get background color
    func getBackground() -> UIColor {
        return StyleGuide.Color.yellow
    }
    /// Get web page address
    func getAddress() -> URL? {
        return pageURL
    }
}
