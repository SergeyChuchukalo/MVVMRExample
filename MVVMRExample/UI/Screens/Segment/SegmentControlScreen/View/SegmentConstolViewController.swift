//
//  SegmentConstolViewController.swift
//  MVVMRExample
//
//  Created by Sergey Chuchukalo on 9/23/18.
//  Copyright © 2018 Sergey. All rights reserved.
//

import UIKit

/// State of SegmentConstolViewController
enum SegmentConstolViewState {
    case loaded
    case openGreenScreen
    case openYellowScreen
    case openRedScreen
}

class SegmentConstolViewController: UIViewController {
    /// Outlets
    @IBOutlet private weak var segmentControl: UISegmentedControl!
    @IBOutlet private weak var buttonRoute: UIButton!
    @IBOutlet private weak var questionLabel: UILabel!
    /// View model
    var viewModel: PSegmentConstolViewModel?
    /// Constatns
    //––––––––––––––––––––––––––––––––––––––––
    // MARK: - Init with coder-
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    //––––––––––––––––––––––––––––––––––––––––
    // MARK: - Deinit -
    deinit { debugPrint("🔻Deinit SegmentConstolViewController") }
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
        segmentControl.addTarget(self, action: #selector(segmentValueChanged), for: .valueChanged)
        viewModel?.viewLoad()
        if let vm = viewModel {
            segmentControl.removeAllSegments()
            var index = 0
            for title in vm.getSegmentTitle() {
                segmentControl.insertSegment(withTitle: title, at: index, animated: true)
                index += 1
            }
            segmentControl.selectedSegmentIndex = vm.getSelectedSegment()
        }
        onLoaded()
    }
    ///––––––––––––––––––––––––––––––––––––––––
    /// MARK: - On state change -
    /// On state change with LoginViewState
    ///
    /// - Parameter state: LoginViewState
    private func onStateChange(_ state: SegmentConstolViewState) {
        switch state {
        case .loaded:
            onLoaded()
        case .openGreenScreen:
            Router.showGreenViewController(self)
            break
        case .openYellowScreen:
            Router.showYellowViewController(self)
            break
        case .openRedScreen:
            Router.showRedViewController(self)
            break
        }
    }
    ///––––––––––––––––––––––––––––––––––––––––
    /// Helpers
    /// On view change to loaded state
    private func onLoaded() {
        if let vm = viewModel {
            title = vm.getTitle()
            view.backgroundColor = vm.getBackgroundColor()
            buttonRoute.setTitleColor(vm.getButtonTitle(), for: .normal)
            buttonRoute.backgroundColor = vm.getButtonBackground()
            buttonRoute.setTitle(vm.getButtonTitle(), for: .normal)
            segmentControl.tintColor = vm.getSegmentTintColor()
            questionLabel.textColor = vm.getQuestion()
            questionLabel.text = vm.getQuestion()
        }
    }
    ///––––––––––––––––––––––––––––––––––––––––
    /// User Interaction
    @objc private func buttonRouteTouch() {
        viewModel?.buttonTouch()
    }
    
    @objc private func segmentValueChanged() {
        viewModel?.segmentValueChange(segmentControl.selectedSegmentIndex)
    }
}
