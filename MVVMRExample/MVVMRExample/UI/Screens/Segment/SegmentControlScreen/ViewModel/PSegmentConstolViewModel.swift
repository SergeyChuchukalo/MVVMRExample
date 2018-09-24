//
//  PSegmentConstolViewModel.swift
//  MVVMRExample
//
//  Created by Sergey Chuchukalo on 9/23/18.
//  Copyright © 2018 Sergey. All rights reserved.
//

import Foundation

protocol PSegmentConstolViewModel {
    var callback: ((SegmentConstolViewState) -> Void)? { get set }
    /// View load
    func viewLoad()
    /// View appear
    func viewAppear()
    /// View disappear
    func viewDisappear()
}
