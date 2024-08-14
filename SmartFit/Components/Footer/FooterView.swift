//
//  FooterView.swift
//  SmartFit
//
//  Created by Matheus  Torres on 25/07/24.
//

import UIKit

class FooterView: UIView {

    let footerLabel: UILabel = {
        let label = UILabel()
        label.text = AppTexts.footerText
        label.font = UIFont(name: "gotham-light", size: 12)
        label.textColor = UIColor.white
        label.textAlignment = .center
        label.numberOfLines = 2
        label.lineBreakMode = .byWordWrapping
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let footerBarView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.customDarkGrey // Cor da faixa
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let iconImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "logo")) // Nome do ícone
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
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
        addSubview(footerBarView)
        addSubview(iconImageView)
        addSubview(footerLabel)
        
        NSLayoutConstraint.activate([
            // Faixa de fundo
            footerBarView.leadingAnchor.constraint(equalTo: leadingAnchor),
            footerBarView.trailingAnchor.constraint(equalTo: trailingAnchor),
            footerBarView.bottomAnchor.constraint(equalTo: bottomAnchor),
            footerBarView.heightAnchor.constraint(equalToConstant: 100), // Altura ajustada

            // Ícone na faixa
            iconImageView.centerXAnchor.constraint(equalTo: footerBarView.centerXAnchor),
            iconImageView.centerYAnchor.constraint(equalTo: footerBarView.centerYAnchor, constant: -15), // Ajustado
            iconImageView.widthAnchor.constraint(equalToConstant: 60),
            iconImageView.heightAnchor.constraint(equalToConstant: 60),

            // Texto do footer
            footerLabel.topAnchor.constraint(equalTo: iconImageView.bottomAnchor, constant: 8), // Espaçamento entre o ícone e o texto
            footerLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            footerLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            footerLabel.bottomAnchor.constraint(equalTo: footerBarView.bottomAnchor, constant: -8),
            footerLabel.heightAnchor.constraint(greaterThanOrEqualToConstant: 30) // Altura mínima ajustada
        ])
    }
}
