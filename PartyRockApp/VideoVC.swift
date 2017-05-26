//
//  VideoVC.swift
//  PartyRockApp
//
//  Created by Suhaib Abdul-Sahib on 2/3/17.
//  Copyright © 2017 SUSU. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    
    @IBOutlet weak var titleLbl: UILabel!
    
    private var _partyRock: PartyRock!
    
    var partyRock: PartyRock {
        get{
            return _partyRock
        } set {
            _partyRock = newValue
        }
    } 

    override func viewDidLoad() {
        super.viewDidLoad()

        titleLbl.text = partyRock.videoTitle
        webView.loadHTMLString(partyRock.videoURL, baseURL: nil )
    }
    @IBAction func backButPress(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

  
}
