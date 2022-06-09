//
//  AppWhatsNewViewController.swift
//  iOSArchitecturesDemo
//
//  Created by Максим Лосев on 07.06.2022.
//  Copyright © 2022 ekireev. All rights reserved.
//

import UIKit

final class AppWhatsNewViewController: UIViewController {
    
    // MARK: - Properties
    private let app: ITunesApp
    private var appDetailWhatsNewView: AppDetailWhatsNewView {
        return self.view as! AppDetailWhatsNewView
    }
    
    // MARK: - Init
    init(app: ITunesApp) {
        self.app = app
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
    override func loadView() {
        super.loadView()
        self.view = AppDetailWhatsNewView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.fillData()
    }
    
    // MARK: - Private
    private func fillData() {
        self.appDetailWhatsNewView.versionLabel.text = app.version
        self.appDetailWhatsNewView.releaseVersionLabel.text = dateFormatter(app.releaseDate)
        self.appDetailWhatsNewView.descriptiontextField.text = app.releaseNotes
    }
    
    private func dateFormatter (_ IsoDate: String?) -> String {
        guard let IsoDate = IsoDate else {
            return ""
        }

        let dateFormatter = ISO8601DateFormatter()
        dateFormatter.formatOptions = [
            .withFullDate,
            .withDashSeparatorInDate
        ]
        if let date = dateFormatter.date(from: IsoDate) {
            return dateFormatter.string(from: date)
        } else {
            return IsoDate
        }
    }
}
