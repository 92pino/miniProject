//
//  ForecastTableViewCell.swift
//  WeatherApiProject
//
//  Created by JinBae Jeong on 09/05/2019.
//  Copyright © 2019 pino. All rights reserved.
//

import UIKit

class ForecastTableViewCell: UITableViewCell {

  static let identifier = "ForecastTableViewCell"
  @IBOutlet weak var dateLabel: UILabel!
  @IBOutlet weak var timeLabel: UILabel!
  @IBOutlet weak var weatherImageView: UIImageView!
  @IBOutlet weak var statusLabel: UILabel!
  @IBOutlet weak var temperatureLabel: UILabel!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
