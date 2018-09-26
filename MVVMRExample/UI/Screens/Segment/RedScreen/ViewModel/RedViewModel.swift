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
        return StyleGuide.Color.red
    }
    /// Get Image
    func getImage() -> UIImage {
        return image ?? UIImage()
    }
}
