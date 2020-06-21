//
//  HomeViewController.swift
//  vedu
//
//  Created by Роман Лабунский on 21/06/2020.
//  Copyright © 2020 Роман Лабунский. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var statBtn: UIButton!
    
    private var galleryCollectionView = GalleryCollectionView()

     let transiton = SlideInTransition()
        var topView: UIView?

        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
            view.addSubview(galleryCollectionView)
                   
            galleryCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
            galleryCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
            galleryCollectionView.topAnchor.constraint(equalTo: statBtn.bottomAnchor, constant: 10).isActive = true
            galleryCollectionView.heightAnchor.constraint(equalToConstant: 350).isActive = true
                   
            galleryCollectionView.set(cells: DiplomaModel.fetchSushi())
        }

        @IBAction func didTapMenu(_ sender: UIBarButtonItem) {
            guard let menuViewController = storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as? MenuViewController else { return }
            menuViewController.didTapMenuType = { menuType in
                self.transitionToNew(menuType)
            }
            menuViewController.modalPresentationStyle = .overCurrentContext
            menuViewController.transitioningDelegate = self
            present(menuViewController, animated: true)
        }

        func transitionToNew(_ menuType: MenuType) {
            let title = String(describing: menuType).capitalized
            self.title = title

            topView?.removeFromSuperview()
            switch menuType {
            case .home:
                let view = UIView()
                view.frame = self.view.bounds
                self.view.addSubview(view)
                self.topView = view
            case .camera:
//                let listVC = ListViewController()
//                present(listVC, animated: true)
                let view = UIView()
//                view.backgroundColor = .blue
//                view.frame = self.view.bounds
//                self.view.addSubview(view)
                self.topView = view
            default:
                break
            }
        }

    }

    extension HomeViewController: UIViewControllerTransitioningDelegate {
        func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
            transiton.isPresenting = true
            return transiton
        }

        func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
            transiton.isPresenting = false
            return transiton
        }
    }

