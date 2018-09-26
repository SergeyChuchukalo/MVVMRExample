//
//  PRedViewModel.swift
//  MVVMRExample
//
//  Created by Sergey Chuchukalo on 9/26/18.
//  Copyright © 2018 Sergey. All rights reserved.
//

import UIKit

protocol PRedViewModel {
    var callback: ((RedViewState) -> Void)? { get set }
    /// View load
    func viewLoad()
    /// View appear
    func viewAppear()
    /// View disappear
    func viewDisappear()
    /// Setup view controller
    ///––––––––––––––––––––––––––––––––––––––––
    /// Title
    func getTitle() -> String
    /// Get background color
    func getBackground() -> UIColor
    /// Get Image
    func getImage() -> UIImage
}
