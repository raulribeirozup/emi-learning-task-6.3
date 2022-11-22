//
//  CinemaViewController.swift
//  LearningTask-6.3
//
//  Created by Raul Ribeiro on 21/11/22.
//

import UIKit

class CinemaViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var movie: Movie = Movie(backgroundImage: "Background", posterImage: "Poster", title: "Doutor Estranho no Multiverso da Loucura", rating: .notRecommendedUnder14, durationInMinutes: 126, criticsScore: 93, publicScore: 98)
    
    var sessions: [Sessions] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.tableHeaderView = TableHeaderView.build(from: movie)
        
        sessions = MovieSessionsAPI().getSessionBy(movie)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sessions.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sessions[section].comingSessions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SessionViewCell", for: indexPath) as? SessionViewCell else {
            fatalError("Não foi possível obter célula para a lista de horários")
        }
        
        let session = sessions[indexPath.section].comingSessions[indexPath.row]
        
        cell.setup(session)
                
        return cell
    }
}
