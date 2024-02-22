//
//  ViewController.swift
//  NativeProfilePic
//
//  Created by Gamid Gapizov on 22.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.contentSize = .init(width: view.frame.width, height: view.frame.height + 200)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "person.crop.circle.fill")
        imageView.tintColor = .systemGray4
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Vot eto title"
        
        addScrollView()
        createNavigationBar()
    }
    
    
    fileprivate func addScrollView() {
        view.addSubview(scrollView)
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    
    
    fileprivate func createNavigationBar() {
        guard let largeNavView = navigationController?.navigationBar.subviews.first(where: { type(of: $0) == NSClassFromString("_UINavigationBarLargeTitleView") }) else {
            return
        }
        
        largeNavView.addSubview(imageView)
        
        let imageViewConstraints = [
            imageView.bottomAnchor.constraint(equalTo: largeNavView.bottomAnchor, constant: -10),
            imageView.trailingAnchor.constraint(equalTo: largeNavView.trailingAnchor, constant: -10),
            imageView.widthAnchor.constraint(equalToConstant: 36),
            imageView.heightAnchor.constraint(equalToConstant: 36)
        ]
        NSLayoutConstraint.activate(imageViewConstraints)
    }
                                                                                      }
