//
//  ViewController.swift
//  PartyRockApp
//
//  Created by Suhaib Abdul-Sahib on 2/2/17.
//  Copyright © 2017 SUSU. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [PartyRock]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = PartyRock(imageURL: "https://i.ytimg.com/vi/SjmTFIHX1yo/hqdefault.jpg?custom=true&w=336&h=188&stc=true&jpg444=true&jpgq=90&sp=68&sat=0.3&sigh=D8zGChbgl4pSgo7WiqZqKUd2JzM", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/SjmTFIHX1yo\" frameborder=\"0\" allowfullscreen></iframe>", videoTitleURL: "Lights Out")
        
        let p2 = PartyRock(imageURL: "https://i.ytimg.com/vi/CdLhdrNgGu4/hqdefault.jpg?custom=true&w=336&h=188&stc=true&jpg444=true&jpgq=90&sp=68&sat=0.3&sigh=FSA8dQg4PQ0XD8n1LNxq1Q2mcsQ", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/CdLhdrNgGu4?ecver=1\" frameborder=\"0\" allowfullscreen></iframe>", videoTitleURL: "Let's Get Ridiculous")
        
        let p3 = PartyRock(imageURL: "https://i.ytimg.com/vi/SkTt9k4Y-a8/hqdefault.jpg?custom=true&w=336&h=188&stc=true&jpg444=true&jpgq=90&sp=68&sat=0.3&sigh=4KTGpL3ky1uwnc0dFNZ4qb3Opmc", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/SkTt9k4Y-a8?ecver=1\" frameborder=\"0\" allowfullscreen></iframe>", videoTitleURL: "Sorry For Party Rocking")
        
        let p4 = PartyRock(imageURL: "https://i.ytimg.com/vi/tWyuglGCKgE/hqdefault.jpg?custom=true&w=336&h=188&stc=true&jpg444=true&jpgq=90&sp=68&sat=0.3&sigh=TqDgv-0kY7E_5s1Oi4E7b3WcEEs", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/tWyuglGCKgE\" frameborder=\"0\" allowfullscreen></iframe>", videoTitleURL: "Juicy Wiggle")
        
        let p5 = PartyRock(imageURL: "https://i.ytimg.com/vi/c_3xZgvy6fo/hqdefault.jpg?custom=true&w=336&h=188&stc=true&jpg444=true&jpgq=90&sp=68&sat=0.3&sigh=1FSyuQTKtTTaM0UT0VZoPJ2S4Dk", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/c_3xZgvy6fo\" frameborder=\"0\" allowfullscreen></iframe>", videoTitleURL: "New Thang")
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell{
            
            let partyRock = partyRocks[indexPath.row]
            
            cell.updateUI(partyRock: partyRock)
            return cell
            
        } else {
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section:Int) -> Int {
        
        return partyRocks.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let partyRock = partyRocks[indexPath.row]
        performSegue(withIdentifier: "VideoVC", sender: partyRock)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC {
            if let party = sender as? PartyRock {
                destination.partyRock = party
            }
        }
    }

}




