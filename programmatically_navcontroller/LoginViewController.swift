//
//  ViewController.swift
//  programmatically_navcontroller
//
//  Created by Eren Demir on 17.07.2022.
//

import UIKit

class LoginViewController: UIViewController {
    let button = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        navigationItem.title = "Login Page"
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 200, height: 150))
        view.addSubview(button)
        button.setTitle("Go HomePage", for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    @objc private func didTapButton(){
        let vc = HomeTabBarController()
        navigationController?.pushViewController(vc, animated: true)
        navigationController?.modalPresentationStyle = .fullScreen
    }


}

class HomeTabBarController: UITabBarController {
    let button = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        view.backgroundColor = .red
        navigationItem.title = "HomePage"
        let homeVC = HomeVC()
        homeVC.title = "Home"
        let favVC = FavoritesVC()
        favVC.title = "Favorites"
        let profileVC = ProfileVC()
        profileVC.title = "Profile"
        
        self.setViewControllers([homeVC,favVC,profileVC], animated: true)
        guard let items = self.tabBar.items else {return}
        let images = ["house","star","person"]
        
        for i in 0..<items.count {
            items[i].image = UIImage(systemName: images[i])
        }
        self.tabBar.tintColor = .black
        self.tabBar.barTintColor = .black
    }
    
}


class HomeVC: UIViewController{
    let button = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 200, height: 150))
        view.addSubview(button)
        button.setTitle("Go Messages Page", for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
    }
    @objc private func didTapButton(){
        let vc = MessagesVC()
        navigationController?.pushViewController(vc, animated: true)
        navigationController?.modalPresentationStyle = .fullScreen
    }
}

class FavoritesVC: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        
    }
}

class ProfileVC: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        
    }
}

class MessagesVC: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        
    }
}
