//
//  Router.swift
//  MVVMRExample
//
//  Created by Sergey Chuchukalo on 9/23/18.
//  Copyright © 2018 Sergey. All rights reserved.
//

import UIKit

class Router {
    
    class func createRootWindow() -> UIWindow {
        let window = UIWindow()
        let view = SegmentConstolView()
        view.viewModel = SegmentConstolViewModel(0)
        window.rootViewController = UINavigationController(rootViewController: view)
        window.makeKeyAndVisible()
        return window
    }
    
    class func showSegmentConstolView(_ viewController: UIViewController) {
        let view = SegmentConstolView()
        view.viewModel = SegmentConstolViewModel(0)
        viewController.show(view, sender: self)
    }
}
