//
//  ViewController.swift
//  iPhone_weatherApp
//
//  Created by JinBae Jeong on 2019/09/26.
//  Copyright © 2019 pino. All rights reserved.
//

import UIKit
import SnapKit

class WeatherController: UIViewController {
    
    // MARK: - Properties
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    private let backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        // FIXME: - 배경 이미지는 해당 지역의 날씨에 비례해 변경되야함
        imageView.image = UIImage(named: "background")
        imageView.contentMode = .scaleToFill
        
        return imageView
    }()
    
    internal lazy var weatherCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 0
        layout.scrollDirection = .horizontal
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.dataSource = self
        
        collectionView.isPagingEnabled = true
        collectionView.backgroundColor = .clear
        
        view.addSubview(collectionView)
        
        return collectionView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(backgroundImageView)
        
        makeConstraints()
    }
    
    // MARK: - Layout
    private func makeConstraints() {
        backgroundImageView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }

}

// MARK: - CollectionView DataSource
extension WeatherController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return weather?.count ?? 0
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: WeatherCollectionViewCell.reusableIdentifier, for: indexPath)
        
        return cell
    }
    
    
}

// MARK: - CollectionView FlowLayout
extension WeatherController: UICollectionViewDelegateFlowLayout {
    
}
