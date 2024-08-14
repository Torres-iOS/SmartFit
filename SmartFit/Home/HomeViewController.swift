//
//  File.swift
//  SmartFit
//
//  Created by Matheus  Torres on 25/07/24.
//

import UIKit

class HomeViewController: UIViewController {
    
    let headerView: HeaderView = {
        let view = HeaderView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let footerView: FooterView = {
        let view = FooterView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    let contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let formView: FormView = {
        let view = FormView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViews()
    }
    
    func setupViews() {
        view.addSubview(headerView)
        view.addSubview(footerView)
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(formView)
        
        NSLayoutConstraint.activate([
            // Constraints para HeaderView
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            // Constraints para FooterView
            footerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            footerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            footerView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            footerView.heightAnchor.constraint(equalToConstant: 80),
            
            // Constraints para ScrollView
            scrollView.topAnchor.constraint(equalTo: headerView.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: footerView.topAnchor),
            
            // Constraints para ContentView dentro do ScrollView
                contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
                contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
                contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
                contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
                contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
                
                // Garantir que o ContentView tenha uma altura mínima
                contentView.heightAnchor.constraint(greaterThanOrEqualToConstant: 800), // Ajuste o valor conforme necessário
            
            // Garantir que o ContentView tenha uma altura mínima
            contentView.heightAnchor.constraint(greaterThanOrEqualToConstant: 800),
            
            // Constraints para FormView
            formView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            formView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            formView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            formView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20),
            formView.heightAnchor.constraint(equalToConstant: 400) // Altura do FormView
        ])
    }
}
