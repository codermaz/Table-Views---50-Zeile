//
//  ViewController.swift
//  Table Views 50
//
//  Created by MacMini on 04.11.17.
//  Copyright © 2017 MacMini. All rights reserved.
//
/*
 A.>> Main.storyboard
 1. aus Object Library Table View auswählen und ganze Seite vergrössern
 2. aus OL Table View Cell auswählen, bei "Show the Attributes Inspector" & "Identifier" einen Namen geben : z.B. "Cell"
 3. von Table View zum "View Controller" durch Ctrl drücken mit mouse-linke taste verbinden, bei geöffnetem Menu "Outlets"
        1. dataSource
        2. delegate
    auswählen
 
 B.>> ViewController.swift
 1. als Obere Klasse "UITableViewDelegate" und "UITableViewDataSource" hinzufügen
 2. für den "Fix" auswählen danach kommen 2 Zeilen:
        1.  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                return 50  // anzahl der Listenzeile
            }
         2. func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")  //verbindung ausbauen
                cell.textLabel?.text = String (indexPath.row + 1) // inhalt der Zeile bestimmen
                return cell
             }
*/
import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        cell.textLabel?.text = String (indexPath.row + 1)
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

