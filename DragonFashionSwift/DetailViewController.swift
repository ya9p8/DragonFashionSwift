//
//  DetailViewController.swift
//  DragonFashionSwift
//
//  Created by Yemi Ajibola on 1/28/16.
//  Copyright © 2016 Yemi Ajibola. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController
{
    
    var dragon:Dragon = Dragon()

    @IBOutlet weak var dragonLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.dragonLabel.text = dragon.description
    }
    
    override func viewWillAppear(animated: Bool)
    {
        self.dragonLabel.sizeToFit()
    }


}
