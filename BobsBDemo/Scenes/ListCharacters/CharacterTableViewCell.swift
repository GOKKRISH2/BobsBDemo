//
//  CharacterTableViewCell.swift
//  BobsBDemo
//
//  Created by Gokul Krishna on 08/06/22.
//

import UIKit

class CharacterTableViewCell: UITableViewCell {

    @IBOutlet weak var characterNameLabel: UILabel!
    @IBOutlet weak var characterImageView: UIImageView!
    @IBOutlet weak var characterVoiceByLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
