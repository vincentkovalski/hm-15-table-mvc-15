import UIKit
class SettingTableViewCell: UITableViewCell {
    static let identifier = "SettingTableViewCell"

    private let iconContainer: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.layer.cornerRadius = 8
        view.layer.masksToBounds = true
        return view
    }()
    private let iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .white
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    private let label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        return label
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(label)
        contentView.addSubview(iconContainer)
        iconContainer.addSubview(iconImageView)
        contentView.clipsToBounds = true
        accessoryType = .disclosureIndicator
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        let size: CGFloat = contentView.frame.size.height - 12
        let imageSize: CGFloat = size/1.5

        iconContainer.translatesAutoresizingMaskIntoConstraints = false
        iconContainer.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 6).isActive = true
        //iconContainer.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 6).isActive = true
        iconContainer.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15).isActive = true
        iconContainer.heightAnchor.constraint(equalToConstant: size).isActive = true
        iconContainer.widthAnchor.constraint(equalToConstant: size).isActive = true

        label.translatesAutoresizingMaskIntoConstraints = false
        label.leadingAnchor.constraint(equalTo: iconContainer.trailingAnchor, constant: 10).isActive = true
        label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12.5).isActive = true
        label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12.5).isActive = true

        iconImageView.heightAnchor.constraint(equalToConstant: imageSize).isActive = true
        iconImageView.translatesAutoresizingMaskIntoConstraints = false
                let horizontalConstraint = iconImageView.centerXAnchor.constraint(equalTo: iconContainer.centerXAnchor)
                let verticalConstraint = iconImageView.centerYAnchor.constraint(equalTo: iconContainer.centerYAnchor)
                NSLayoutConstraint.activate([horizontalConstraint, verticalConstraint])
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        iconImageView.image = nil
        label.text = nil
        iconContainer.backgroundColor = nil
    }
    public func configure(with model: SettingsOption) {
        label.text = model.title
        iconImageView.image = model.icon
        iconContainer.backgroundColor = model.iconBackgroundColor
    }
}
