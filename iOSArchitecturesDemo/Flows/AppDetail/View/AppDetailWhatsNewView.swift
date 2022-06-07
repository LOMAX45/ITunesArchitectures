//
//  AppDetailWhatsNewView.swift
//  iOSArchitecturesDemo
//
//  Created by Максим Лосев on 07.06.2022.
//  Copyright © 2022 ekireev. All rights reserved.
//

import UIKit

class AppDetailWhatsNewView: UIView {
    
    //MARK: - Subviews
    
    private(set) lazy var headerLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Что нового"
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 19.0)
        label.textAlignment = .left
        
        return label
    }()
    
    private(set) lazy var versionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .gray
        label.textAlignment = .left
        
        return label
    }()
    
    private(set) lazy var descriptiontextField: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.font = .systemFont(ofSize: 17.0)
        textView.textColor = .gray
        textView.textAlignment = .left
        
        return textView
    }()
    
    private(set) lazy var versionHistoryHeaderLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "История версий"
        label.font = .systemFont(ofSize: 19.0)
        label.textColor = .systemBlue
        label.textAlignment = .right
        
        return label
    }()
    
    private(set) lazy var releaseVersionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .gray
        label.textAlignment = .right
        
        return label
    }()
    
    //MARK: - Init
    override init(frame: CGRect) {
        super .init(frame: frame)
        self.setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - UI
    private func setupLayout() {
        self.addSubview(self.headerLabel)
        self.addSubview(self.versionHistoryHeaderLabel)
        self.addSubview(self.versionLabel)
        self.addSubview(self.releaseVersionLabel)
        self.addSubview(self.descriptiontextField)
        
        NSLayoutConstraint.activate([
            self.headerLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 8.0),
            self.headerLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8.0),
            self.headerLabel.rightAnchor.constraint(equalTo: self.centerXAnchor, constant: -4.0),
            self.headerLabel.heightAnchor.constraint(equalToConstant: 21.0),
            self.versionHistoryHeaderLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 8.0),
            self.versionHistoryHeaderLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8.0),
            self.versionHistoryHeaderLabel.leftAnchor.constraint(equalTo: self.centerXAnchor, constant: 4.0),
            self.versionHistoryHeaderLabel.heightAnchor.constraint(equalToConstant: 21.0),
            self.versionLabel.topAnchor.constraint(equalTo: self.headerLabel.bottomAnchor, constant: 8.0),
            self.versionLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8.0),
            self.versionLabel.rightAnchor.constraint(equalTo: self.centerXAnchor, constant: -4.0),
            self.versionLabel.heightAnchor.constraint(equalToConstant: 17.0),
            self.releaseVersionLabel.topAnchor.constraint(equalTo: self.versionHistoryHeaderLabel.bottomAnchor, constant: 8.0),
            self.releaseVersionLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8.0),
            self.releaseVersionLabel.leftAnchor.constraint(equalTo: centerXAnchor, constant: 4.0),
            self.releaseVersionLabel.heightAnchor.constraint(equalToConstant: 17.0),
            self.descriptiontextField.topAnchor.constraint(equalTo: self.versionLabel.bottomAnchor, constant: 4.0),
            self.descriptiontextField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8.0),
            self.descriptiontextField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 8.0),
            self.descriptiontextField.heightAnchor.constraint(equalToConstant: 128.0)
        ])
    }
}
