//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by Suhaib Abdul-Sahib on 2/3/17.
//  Copyright © 2017 SUSU. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoTitle: UILabel!
     
    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    

    func updateUI(partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitle
        
        let url = URL(string: partyRock.imageURL)!
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().async {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            } catch {
                //handle the error
            }
        }
        
        
    }
    
}



