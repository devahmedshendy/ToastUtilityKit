//
//  RichToastView.swift
//  
//
//  Created by Ahmed Shendy on 11/1/21.
//

import Foundation
import UIKit
import ProgressUtilityKit

public final class RichToastView: UIView {
    
    // MARK: - API
    
    var onHidden: (() -> Void)?
    
    func apply(configuration: RichToastConfiguration) {
        
        backgroundView = UIView()
        addSubview(backgroundView)
        
        bodyLabel = UILabel()
        addSubview(bodyLabel)
        
        typeIconView = UIImageView()
        addSubview(typeIconView)
        
        titleLabel = UILabel()
        addSubview(titleLabel)
        
        closeIconView = UIImageView()
        addSubview(closeIconView)
        
        progressView = PUBorderedWipe()
        addSubview(progressView)
        
        configureBackgroundView(with: configuration)
        
        
        configureBodyView(with: configuration)
        
        // If enableTypeIcon
        configureTypeIconView(with: configuration)
        
        // if enableTitleView
        configureTitleView(with: configuration)
        
        if configuration.progressStyle == .none {
            configureCloseIconView(with: configuration)
            
        } else if configuration.progressStyle == .wipe {
            configureWipeProgressView(with: configuration)
            bindToLinearProgressView()
        } else if configuration.progressStyle == .linear {
//            configureLinearProgressView(with: configuration)
//            bindToLinearProgressView()
        }
    }
    
    // MARK: - SubViews
    
    var backgroundView: UIView!
    var titleLabel: UILabel!
    var bodyLabel: UILabel!
    var typeIconView: UIImageView!
    var closeIconView: UIImageView!
    var progressView: PUBorderedWipe!
    
    // MARK: init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
}

//MARK: - SubViews Configurations

extension RichToastView {
    
    // MARK: Configurations
    
    private func configureBackgroundView(with configuration: RichToastConfiguration) {
        
        backgroundView.backgroundColor = configuration.themeColor.background
        backgroundView.layer.cornerRadius = configuration.cornerRadius
        
        // Constraint Configuration
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            backgroundView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25.0),
            backgroundView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25.0),
            backgroundView.topAnchor.constraint(equalTo: self.topAnchor, constant: 20.0),
            backgroundView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0)
        ])
    }
    
    private func configureBodyView(with configuration: RichToastConfiguration) {
        
        bodyLabel.text = configuration.body
        bodyLabel.font = configuration.themeFont.body
        bodyLabel.textColor = configuration.themeColor.body
        
        bodyLabel.numberOfLines = .max
        
        // Constraint Configuration
        bodyLabel.translatesAutoresizingMaskIntoConstraints = false
        
        bodyLabel.setContentCompressionResistancePriority(UILayoutPriority.defaultLow, for: .horizontal)
        bodyLabel.setContentHuggingPriority(UILayoutPriority.fittingSizeLevel, for: .horizontal)
        
        NSLayoutConstraint.activate([
            bodyLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            bodyLabel.trailingAnchor.constraint(equalTo: closeIconView.leadingAnchor),
            bodyLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5.0),
            bodyLabel.bottomAnchor.constraint(equalTo: backgroundView.bottomAnchor, constant: -15.0)
        ])
    }
    
    private func configureTypeIconView(with configuration: RichToastConfiguration) {
        
        typeIconView.tintColor = configuration.themeColor.typeIcon
        
        // Make pointSize & weight part of configuration
        // Type icons should all be svg
        typeIconView.image = configuration.themeIcon.type
            .withConfiguration(UIImage.SymbolConfiguration.init(pointSize: 30, weight: .bold))
        
        // Constraint Configuration
        typeIconView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            typeIconView.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor, constant: 10.0),
            typeIconView.topAnchor.constraint(equalTo: backgroundView.topAnchor, constant: 15.0)
        ])
    }
    
    private func configureTitleView(with configuration: RichToastConfiguration) {
        
        titleLabel.text = configuration.title
        titleLabel.font = configuration.themeFont.title
        titleLabel.textColor = configuration.themeColor.title
        
        titleLabel.numberOfLines = 1
        
        // Constraint Configuration
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: typeIconView.trailingAnchor, constant: 10.0),
            titleLabel.topAnchor.constraint(equalTo: typeIconView.topAnchor)
        ])
    }
    
    private func configureCloseIconView(with configuration: RichToastConfiguration) {
        
        closeIconView.image = configuration.themeIcon.close
        closeIconView.tintColor = configuration.themeColor.closeIcon
        
        let symbolConfiguration = UIImage.SymbolConfiguration(pointSize: 15, weight: .bold)
        closeIconView.image = UIImage(systemName: "xmark", withConfiguration: symbolConfiguration)
        
        // Constraint Configuration
        closeIconView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            closeIconView.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor, constant: -10.0),
            closeIconView.topAnchor.constraint(equalTo: backgroundView.topAnchor, constant: 10.0)
        ])
    }
    
    private func configureWipeProgressView(with configuration: RichToastConfiguration) {
        progressView.color = configuration.themeColor.progress
        progressView.duration = configuration.progressDuration
        
        // Constraint Configuration
        progressView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            progressView.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor, constant: -10.0),
            progressView.topAnchor.constraint(equalTo: backgroundView.topAnchor, constant: 10.0),
            progressView.widthAnchor.constraint(equalToConstant: 15),
            progressView.heightAnchor.constraint(equalToConstant: 15)
        ])
    }
    
    private func bindToLinearProgressView() {
        progressView.onFinish = { [weak self] in self?.onHidden?() }
    }
    
}

