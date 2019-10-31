//
//  SelectPhotoHeader.swift
//  InstagramCopy
//
//  Created by JinBae Jeong on 2019/10/31.
//  Copyright © 2019 pino. All rights reserved.
//

import UIKit

class SelectPhotoHeader: UICollectionViewCell {
    // MARK: - Properties
    let photoImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(photoImageView)
        photoImageView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
