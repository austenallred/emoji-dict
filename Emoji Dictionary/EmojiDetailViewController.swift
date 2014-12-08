//
//  EmojiDetailViewController.swift
//  Emoji Dictionary
//
//  Created by Austen Allred on 12/6/14.
//  Copyright (c) 2014 Austen Allred. All rights reserved.
//

import Foundation
import UIKit

class EmojiDetailViewController : UIViewController {
    @IBOutlet var emojiLabel: UILabel!
    
    @IBOutlet var emojiDefinitionLabel: UILabel!
    var emoji = "👽"
    var emojiDefinition = "My Def"
    
    override func viewDidLoad() {
        self.emojiLabel.text = self.emoji
        self.emojiDefinitionLabel.text = self.emojiDefinition
        
    }
}
