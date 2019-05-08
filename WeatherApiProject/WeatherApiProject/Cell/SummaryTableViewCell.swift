//
//  SummaryTableViewCell.swift
//  WeatherApiProject
//
//  Created by JinBae Jeong on 09/05/2019.
//  Copyright © 2019 pino. All rights reserved.
//

import UIKit

class SummaryTableViewCell: UITableViewCell {

  static let identifier = "SummaryTableViewCell"
  @IBOutlet weak var weatherImageView: UIImageView!
  @IBOutlet weak var statusLabel: UILabel!
  @IBOutlet weak var minMaxLabel: UILabel!
  @IBOutlet weak var currentTemperatureLabel: UILabel!
  
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
