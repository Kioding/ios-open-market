//
//  CustomCollectionViewCell.swift
//  OpenMarket
//
//  Created by kio on 2021/06/16.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {

    static let identifier = "CustomCollectionViewCell"
    
    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var discountedPriceLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var stockLabel: UILabel!
    
    let mainVC = MainViewController()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.borderColor = UIColor.darkGray.cgColor
        self.layer.borderWidth = 0.5
        self.layer.cornerRadius = 20.0
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        self.priceLabel.attributedText = nil
        self.discountedPriceLabel.isHidden = false
    }
    
//    func configure(item: ItemShortInformaion) {
//        self.titleLabel.text = item.title
//        self.priceLabel.text = "USD " + mainVC.changeNumberFomatter(number: Int(item.price))
//        
//        if item.discountedPrice == nil {
//            self.discountedPriceLabel.isHidden = true
//        } else {
//            self.discountedPriceLabel.text =
//                "USD " + mainVC.changeNumberFomatter(number: item.discountedPrice!)
//            self.priceLabel.attributedText = self.priceLabel.text?.strikeThrough()
//        }
//        
//        if item.stock == 0 {
//            self.stockLabel.text = "품절"
//            self.stockLabel.textColor = UIColor.orange
//        } else {
//            self.stockLabel.text = "잔여수량: " + mainVC.changeNumberFomatter(number: item.stock)
//            self.stockLabel.textColor = UIColor.lightGray
//        }
//    }
}
