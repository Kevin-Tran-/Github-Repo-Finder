//
//  GitHubCell.swift
//  GithubDemo
//
//  Created by Kevin Tran on 2/9/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class GitHubCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var forksLabel: UILabel!
    @IBOutlet weak var starsLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var repos: GithubRepo! {
        didSet {
            nameLabel.text = repos.name
            userLabel.text = "\(repos.ownerHandle!)"
            if let ownerURL = repos.ownerAvatarURL {
                userImage.setImageWithURL(NSURL(string: ownerURL)!)
            }
            forksLabel.text = "\(repos.forks!)"
            starsLabel.text = "\(repos.stars!)"
            descriptionLabel.text = repos.repoDescription
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
