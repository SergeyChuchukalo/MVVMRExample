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
        let view = SegmentConstolViewController()
        view.viewModel = SegmentConstolViewModel(0)
        window.rootViewController = UINavigationController(rootViewController: view)
        window.makeKeyAndVisible()
        return window
    }
    
    class func showSegmentConstolView(_ viewController: UIViewController) {
        let view = SegmentConstolViewController()
        view.viewModel = SegmentConstolViewModel(0)
        viewController.show(view, sender: self)
    }
    
    class func showGreenViewController(_ viewController: UIViewController) {
        let view = GreenViewController()
        view.viewModel = GreenViewModel()
        viewController.show(view, sender: self)
    }
    
    class func showYellowViewController(_ viewController: UIViewController) {
        let view = YellowViewController()
        view.viewModel = YellowViewModel()
        viewController.show(view, sender: self)
    }
    
    class func showRedViewController(_ viewController: UIViewController) {
        let view = RedViewController()
        view.viewModel = RedViewModel()
        viewController.show(view, sender: self)
    }
}
