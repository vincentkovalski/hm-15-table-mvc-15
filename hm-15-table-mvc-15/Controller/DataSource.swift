import Foundation
import UIKit

extension ViewController: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return models.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models[section].options.count
    }
    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingTableViewCell", for: indexPath)
//        return cell
//    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let model = models[indexPath.section].options[indexPath.row]

            switch model.self {
            case .staticCell(let model):
                guard let cell = tableView.dequeueReusableCell(
                    withIdentifier: SettingTableViewCell.identifier,
                    for: indexPath
                ) as? SettingTableViewCell else  {
                    return UITableViewCell()
                }
                cell.configure(with: model)
                return cell
            case .switchCell(let model):
                guard let cell = tableView.dequeueReusableCell(
                    withIdentifier: SwitchTableViewCell.identifier,
                    for: indexPath
                ) as? SwitchTableViewCell else  {
                    return UITableViewCell()
                }
                cell.configure(with: model)
                return cell

//            case .notificationCell(model: let model):
//                guard let cell = tableView.dequeueReusableCell(
//                    withIdentifier: NotificationTableViewCell.identifier,
//                    for: indexPath
//                ) as? NotificationTableViewCell else  {
//                    return UITableViewCell()
//                }
//                cell.configure(with: model)
//                return cell
            }
    }
}
