//
//  HeaderView.swift
//  SmartFit
//
//  Created by Matheus  Torres on 25/07/24.
//

import UIKit

class HeaderView: UIView {

    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = AppTexts.headerTitle
        label.font = UIFont(name: "gotham-bold", size: 36)
        label.textColor = UIColor.customDarkGrey
        label.numberOfLines = 2
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = AppTexts.headerDescription
        label.font = UIFont(name: "gotham-light", size: 14)
        label.textColor = UIColor.customLightGrey
        label.numberOfLines = 0
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let separatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.customDarkGrey // Cor da faixa separadora
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    let blackBarView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.black // Cor da faixa preta
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
        addSubview(blackBarView)
        addSubview(iconImageView)
        addSubview(titleLabel)
        addSubview(separatorView)
        addSubview(descriptionLabel)
        
        NSLayoutConstraint.activate([
            // Faixa preta
            blackBarView.topAnchor.constraint(equalTo: topAnchor),
            blackBarView.leadingAnchor.constraint(equalTo: leadingAnchor),
            blackBarView.trailingAnchor.constraint(equalTo: trailingAnchor),
            blackBarView.heightAnchor.constraint(equalToConstant: 80), // Altura da faixa preta

            // Ícone na faixa preta
            iconImageView.centerXAnchor.constraint(equalTo: blackBarView.centerXAnchor),
            iconImageView.centerYAnchor.constraint(equalTo: blackBarView.centerYAnchor),
            iconImageView.widthAnchor.constraint(equalToConstant: 80), // Largura do ícone
            iconImageView.heightAnchor.constraint(equalToConstant: 80), // Altura do ícone

            // Título
            titleLabel.topAnchor.constraint(equalTo: blackBarView.bottomAnchor, constant: 16),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),

            // Faixa separadora
            separatorView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            separatorView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            separatorView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -270),
            separatorView.heightAnchor.constraint(equalToConstant: 10), // Altura da faixa separadora
            
            // Descrição
            descriptionLabel.topAnchor.constraint(equalTo: separatorView.bottomAnchor, constant: 8),
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            descriptionLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16)
        ])
    }
}
