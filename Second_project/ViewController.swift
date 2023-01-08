//
//  ViewController.swift
//  Second_project
//
//  Created by Yerzhan Syzdyk on 20.12.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    private lazy var myLabel : UILabel = {
        var myLabel = UILabel()
        myLabel.text = "I am Rich"
        myLabel.font = UIFont.boldSystemFont(ofSize: 70)
        myLabel.textColor = .white
        return myLabel
    }()
    
    private lazy var bottomLabel : UILabel = {
        var myLabel = UILabel()
        myLabel.text = "Account: 0$"
        myLabel.font = UIFont.boldSystemFont(ofSize: 35)
        myLabel.textColor = .white
        return myLabel
    }()
    
    private lazy var myDiamond : UIImageView = {
        var myImageView = UIImageView()
        myImageView.image = UIImage(named: "diamond")
        return myImageView
    }()
    
    private lazy var myButton : UIButton = {
        var myButton = UIButton()
        myButton.setTitle("Change", for: .normal)
        myButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        myButton.backgroundColor = .black
        myButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        myButton.setTitleColor(UIColor.white.withAlphaComponent(0.5), for: .highlighted)
        myButton.layer.cornerRadius = 10
        
        return myButton
    }()
    

    @objc func buttonPressed(){
        bottomLabel.text = "Account: \(Int.random(in: 1000...10000))$"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(cgColor: CGColor(red: 0, green: 100, blue: 0, alpha: 0.2))
        
        setupViews()
        setupConstraints()
    }


}


//MARK: Setup views and constraint methods


private extension ViewController{
    func setupViews (){
        view.addSubview(myLabel)
        view.addSubview(myDiamond)
        view.addSubview(bottomLabel)
        view.addSubview(myButton)
    }
    
    func setupConstraints(){
        myLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(myDiamond.snp.top)
        }
        myDiamond.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        bottomLabel.snp.makeConstraints { make in
            make.top.equalTo(myDiamond.snp.bottom)
            make.centerX.equalToSuperview()
        }
        myButton.snp.makeConstraints { make in
            make.top.equalTo(bottomLabel.snp.bottom).offset(30)
            make.centerX.equalToSuperview()
            make.width.equalTo(120)
            make.height.equalTo(60)
        }
    }
}
