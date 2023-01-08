//
//  SceneDelegate.swift
//  Second_project
//
//  Created by Yerzhan Syzdyk on 20.12.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        //window = UIWindow(windowScene: windowScene.screen.bounds)
        window = UIWindow(windowScene: windowScene)
        window?.makeKeyAndVisible()
        window?.rootViewController = ViewController()
    }

}

