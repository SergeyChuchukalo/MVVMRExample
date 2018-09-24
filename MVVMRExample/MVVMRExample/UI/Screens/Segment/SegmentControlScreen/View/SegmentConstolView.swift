//
//  SegmentConstolView.swift
//  MVVMRExample
//
//  Created by Sergey Chuchukalo on 9/23/18.
//  Copyright © 2018 Sergey. All rights reserved.
//

import UIKit

class SegmentConstolView: UIViewController {
    /// Outlets
    @IBOutlet private weak var buttonRoute: UIButton!
    /// View model
    var viewModel: PSegmentConstolViewModel?
    /// Constatns
    //––––––––––––––––––––––––––––––––––––––––
    // MARK: - Init with coder-
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    //––––––––––––––––––––––––––––––––––––––––
    // MARK: - Deinit -
    deinit { debugPrint("🔻Deinit SegmentConstolView") }
    //––––––––––––––––––––––––––––––––––––––––
    // MARK: - Init -
    init() {
        super.init(nibName: String(describing: type(of: self)), bundle: Bundle.main)
        self.providesPresentationContextTransitionStyle = false
        self.modalPresentationStyle = .fullScreen
    }
    //––––––––––––––––––––––––––––––––––––––––
    // MARK: - Life cycle -
    /// viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    /// viewWillAppear
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        viewModel?.viewAppear()
    }
    /// viewWillAppear
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.setEditing(false, animated: true)
    }
    /// viewDidDisappear
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        viewModel?.viewDisappear()
    }
    /// Setup view navigation, tableView delegate and setup callback for view model
    private func setupView() {
        viewModel?.callback = { [weak self] state in DispatchQueue.main.async { self?.onStateChange(state) } }
        buttonRoute.addTarget(self, action: #selector(buttonRouteTouch), for: .touchUpInside)
//        self.title = 
        viewModel?.viewLoad()
    }
    //––––––––––––––––––––––––––––––––––––––––
    // MARK: - On state change -
    /// On state change with LoginViewState
    ///
    /// - Parameter state: LoginViewState
    private func onStateChange(_ state: SegmentConstolViewState) {
        switch state {
        case .loading:
//            showLoadingIndicator(true)
            break
        case .loaded:
//            showLoadingIndicator(false)
            break
        case .error(let error):
            debugPrint(error)
//            showLoadingIndicator(false)
//            self.showErrorMessage(title: error)
            break
        }
    }
    
    /// User Interaction
    
    @objc private func buttonRouteTouch() {
        Router.showSegmentConstolView(self)
    }

}



func printPisition() {
    debugPrint("Middle/Senior React JS")
    debugPrint("Middle Magento Developer")
    debugPrint("Full Stack React&Node.JS")
    debugPrint("Front End Developer (Typescript & Angular)")
    debugPrint("WPF, MVVM Middle")
    debugPrint("Front End Developer with Typescript")
    debugPrint("Full Stack PHP with Angular")
    debugPrint("Demandware")
    debugPrint("Big Data Architect")
}










