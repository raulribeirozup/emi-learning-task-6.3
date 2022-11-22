//
//  HorarioViewCell.swift
//  LearningTask-6.3
//
//  Created by Raul Ribeiro on 21/11/22.
//

import UIKit

class SessionViewCell: UITableViewCell {

    @IBOutlet weak var iconeImageView: UIImageView!
    @IBOutlet weak var horarioLabel: UILabel!
    @IBOutlet weak var tipoLabel: UILabel!
    
    func setup(_ session: Session) {
        horarioLabel.text = DateFormatter.format(date: session.dateTime, to: .hoursPlusMinutes)
        tipoLabel.text = session.type.rawValue
    }

}
