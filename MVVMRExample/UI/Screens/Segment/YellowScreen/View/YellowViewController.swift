//
//  YellowViewController.swift
//  MVVMRExample
//
//  Created by Sergey Chuchukalo on 9/26/18.
//  Copyright © 2018 Sergey. All rights reserved.
//

import UIKit
import WebKit

/// State of YellowViewController
enum YellowViewState {
    case loaded
}

class YellowViewController: UIViewController {
    /// Outlets
    @IBOutlet private weak var webView: WKWebView!
    /// View model
    var viewModel: PYellowViewModel?
    /// Constatns
    //––––––––––––––––––––––––––––––––––––––––
    // MARK: - Init with coder-
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    //––––––––––––––––––––––––––––––––––––––––
    // MARK: - Deinit -
    deinit { debugPrint("🔻Deinit YellowViewController") }
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
        viewModel?.viewLoad()
        if let vm = viewModel {
            title = vm.getTitle()
            view.backgroundColor = vm.getBackground()
        }
        onLoaded()
    }
    ///––––––––––––––––––––––––––––––––––––––––
    /// MARK: - On state change -
    /// On state change with LoginViewState
    ///
    /// - Parameter state: LoginViewState
    private func onStateChange(_ state: YellowViewState) {
        switch state {
        case .loaded:
            onLoaded()
        }
    }
    ///––––––––––––––––––––––––––––––––––––––––
    /// Helpers
    /// On view change to loaded state
    private func onLoaded() {
        if let vm = viewModel {
            if let url = vm.getAddress() {
                webView.load(URLRequest(url: url))
            }
        }
    }
}
