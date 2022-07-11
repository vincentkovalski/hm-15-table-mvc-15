import UIKit
class ViewController: UIViewController {
    private let tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(SettingTableViewCell.self, forCellReuseIdentifier: SettingTableViewCell.identifier)
        table.register(SwitchTableViewCell.self, forCellReuseIdentifier: SwitchTableViewCell.identifier)
        return table
    }()
    private func setupHierarchy() {
        view.addSubview(tableView)
    }
    private func setupView() {

        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = view.bounds
    }
    private func setupLayout() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Настройки"

        configure()
        setupHierarchy()
        setupView()
        setupLayout()
    }
}

