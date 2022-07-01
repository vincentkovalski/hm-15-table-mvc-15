import UIKit

class ViewController: UIViewController {

    private let tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        return table
    }()


    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(tableView)
    }


}

