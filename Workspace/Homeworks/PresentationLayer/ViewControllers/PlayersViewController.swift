//
//  PlayersViewController.swift
//  FirstHomework
//
//  Created by Marko Andreis on 08.04.2022..
//

import UIKit

class PlayersViewController: UIViewController {
    
    private var tableView = UITableView()
    private var players: [Player] = []
    
    struct Cells {
        static let playerCell = "PlayerCell"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "LA Lakers"
        players = fetchData()
        configureTableView()
    }
    
    func configureTableView() {
        view.addSubview(tableView)
        
        // set delegates
        setTableViewDelegates()
        
        // set row height
        tableView.rowHeight = 150
        
        // register cells
        tableView.register(CustomPlayerCell.self, forCellReuseIdentifier: Cells.playerCell)
        
        // set constraints
        tableView.pin(to: view)
    }
    
    func setTableViewDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension PlayersViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let player = players[indexPath.row]
        
        let vc = PlayerViewController(image: player.image, name: player.name)
        vc.title = player.name
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.playerCell) as! CustomPlayerCell
        let player = players[indexPath.row]
        cell.set(player: player)
        
        return cell
    }
}

extension PlayersViewController {
    
    func fetchData() -> [Player] {
        let player1 = Player(image: Images.anthony_davis!, name: "Anthony Davis")
        let player2 = Player(image: Images.carmelo_anthony!, name: "Carmelo Anthony")
        let player3 = Player(image: Images.dwight_howard!, name: "Dwight Howard")
        let player4 = Player(image: Images.lebron_james!, name: "LeBron James")
        let player5 = Player(image: Images.russell_westbrook!, name: "Russell Westbrook")
        
        return [player1, player2, player3, player4, player5]
    }
}

