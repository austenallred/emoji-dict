//
//  EmojiListViewController.swift
//  Emoji Dictionary
//
//  Created by Austen Allred on 12/6/14.
//  Copyright (c) 2014 Austen Allred. All rights reserved.
//

import Foundation
import UIKit

class EmojiListViewController : UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView!
    
    var emojis = ["😄","💨","😘","🙏","🏰","😓","🎈","👽","🐻","😳","😡","👲","📷","👳","🐤"]
    var emoji = "🎈"
    
    override func viewDidLoad() {
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.emojis.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        cell.textLabel!.text = self.emojis[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.emoji = self.emojis[indexPath.row]
        self.performSegueWithIdentifier("tableViewToEmojiSegue", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var detailViewController = segue.destinationViewController as EmojiDetailViewController
        detailViewController.emoji = self.emoji
        
        if self.emoji == "😄" {
            detailViewController.emojiDefinition = "A smiling face"
        }
        
        if self.emoji == "💨" {
            detailViewController.emojiDefinition = "Dash"
        }
        
        if self.emoji == "😘" {
            detailViewController.emojiDefinition = "Kissy Face"
        }
        
        if self.emoji == "🙏" {
            detailViewController.emojiDefinition = "Clapping hands"
        }
        
        if self.emoji == "🏰" {
            detailViewController.emojiDefinition = "Castle"
        }
        
        if self.emoji == "😓" {
            detailViewController.emojiDefinition = "Sweaty Face"
        }
        
        if self.emoji == "🎈" {
            detailViewController.emojiDefinition = "Balloon"
        }
        
        if self.emoji == "👽" {
            detailViewController.emojiDefinition = "Alien"
        }
        
        if self.emoji == "🐻" {
            detailViewController.emojiDefinition = "Bear"
        }
        
        if self.emoji == "😳" {
            detailViewController.emojiDefinition = "Embarrassed"
        }
        
        if self.emoji == "😡" {
            detailViewController.emojiDefinition = "Angry"
        }
        
        if self.emoji == "👲" {
            detailViewController.emojiDefinition = "Man with Gua Pi Mao"
        }
        
        if self.emoji == "📷" {
            detailViewController.emojiDefinition = "Camera"
        }
        
        if self.emoji == "👳" {
            detailViewController.emojiDefinition = "Man with Turban"
        }
        
        if self.emoji == "🐤" {
            detailViewController.emojiDefinition = "Baby Chick"
        }
    }
}