//
//  CinemaViewController.swift
//  LearningTask-6.3
//
//  Created by Raul Ribeiro on 21/11/22.
//

import UIKit

class CinemaViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var selectedMovie: Movie?
    var sessions: [Sessions]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.tableHeaderView = TableHeaderView.build(from: selectedMovie!)
        tableView.register(TableSectionHeaderView.self, forHeaderFooterViewReuseIdentifier: TableSectionHeaderView.reuseId)
        tableView.sectionHeaderHeight = TableSectionHeaderView.heightConstant
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sessions?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sessions?[section].comingSessions.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SessionViewCell", for: indexPath) as? SessionViewCell else {
            fatalError("Não foi possível obter célula para a lista de horários")
        }
        
        let session = sessions![indexPath.section].comingSessions[indexPath.row]
        
        cell.setup(session)
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: TableSectionHeaderView.reuseId) as? TableSectionHeaderView else {
            fatalError("Não foi possível obter header view para a tabela")
        }
        
        let cinema = sessions![section].by
        
        header.setup(cinema)
        return header
    }
}
