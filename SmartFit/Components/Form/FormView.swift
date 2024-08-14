//
//  FormView.swift
//  SmartFit
//
//  Created by Matheus  Torres on 25/07/24.
//

import UIKit

class FormView: UIView {

    let formTitleLabel: UILabel = {
        let label = UILabel()
        label.text = AppTexts.formTitle
        label.font = UIFont(name: "gotham-bold", size: 18)
        label.textColor = UIColor.customDarkGrey
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let formIconImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "formIcon")) // Substitua "formIcon" pelo nome real do ícone
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let formQuestionLabel: UILabel = {
        let label = UILabel()
        label.text = AppTexts.formQuestion
        label.font = UIFont(name: "gotham-light", size: 14)
        label.textColor = UIColor.customDarkGrey
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let formMorningButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle(AppTexts.formMorning, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let formAfternoonButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle(AppTexts.formAfternoon, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let formEveningButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle(AppTexts.formEvening, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let formShowClosedUnitsSwitch: UISwitch = {
        let switchControl = UISwitch()
        switchControl.translatesAutoresizingMaskIntoConstraints = false
        return switchControl
    }()
    
    let formFindUnitsButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle(AppTexts.formFindUnit, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let formClearButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle(AppTexts.formClear, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }

    func setupView() {
        backgroundColor = .white // Cor de fundo do FormView
        addSubview(formTitleLabel)
        addSubview(formIconImageView)
        addSubview(formQuestionLabel)
        addSubview(formMorningButton)
        addSubview(formAfternoonButton)
        addSubview(formEveningButton)
        addSubview(formShowClosedUnitsSwitch)
        addSubview(formFindUnitsButton)
        addSubview(formClearButton)
        

        
        NSLayoutConstraint.activate([
            // Constraints para formIconImageView
            formIconImageView.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            formIconImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            formIconImageView.widthAnchor.constraint(equalToConstant: 24),
            formIconImageView.heightAnchor.constraint(equalToConstant: 24),

            // Constraints para formTitleLabel
            formTitleLabel.centerYAnchor.constraint(equalTo: formIconImageView.centerYAnchor),
            formTitleLabel.leadingAnchor.constraint(equalTo: formIconImageView.trailingAnchor, constant: 8),
            formTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),

            // Constraints para formQuestionLabel
            formQuestionLabel.topAnchor.constraint(equalTo: formIconImageView.bottomAnchor, constant: 16),
            formQuestionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            formQuestionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),

            // Constraints para formMorningButton
            formMorningButton.topAnchor.constraint(equalTo: formQuestionLabel.bottomAnchor, constant: 16),
            formMorningButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            formMorningButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),

            // Constraints para formAfternoonButton
            formAfternoonButton.topAnchor.constraint(equalTo: formMorningButton.bottomAnchor, constant: 8),
            formAfternoonButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            formAfternoonButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),

            // Constraints para formEveningButton
            formEveningButton.topAnchor.constraint(equalTo: formAfternoonButton.bottomAnchor, constant: 8),
            formEveningButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            formEveningButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),

            // Constraints para formShowClosedUnitsSwitch
            formShowClosedUnitsSwitch.topAnchor.constraint(equalTo: formEveningButton.bottomAnchor, constant: 16),
            formShowClosedUnitsSwitch.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),

            // Constraints para formFindUnitsButton
            formFindUnitsButton.topAnchor.constraint(equalTo: formShowClosedUnitsSwitch.bottomAnchor, constant: 16),
            formFindUnitsButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            formFindUnitsButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),

            // Constraints para formClearButton
            formClearButton.topAnchor.constraint(equalTo: formFindUnitsButton.bottomAnchor, constant: 8),
            formClearButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            formClearButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            formClearButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16)
        ])
    }
}
