import UIKit
class SettingTableViewCell: UITableViewCell {
    static let identifier = "SettingTableViewCell"
    private let NotifContainer: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.layer.cornerRadius = 16
        view.layer.masksToBounds = true
        return view
    }()
    private let labelNotif: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        return label
    }()
    private let additionalLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        return label
    }()
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
        contentView.addSubview(additionalLabel)
        iconContainer.addSubview(iconImageView)
        contentView.addSubview(NotifContainer)
        NotifContainer.addSubview(labelNotif)
        contentView.clipsToBounds = true
        accessoryType = .disclosureIndicator
        additionalLabel.textColor = .systemGray
        labelNotif.textColor = .white
        labelNotif.font = labelNotif.font.withSize(22)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        let size: CGFloat = contentView.frame.size.height - 12
        let imageSize: CGFloat = size/1.5
        NotifContainer.translatesAutoresizingMaskIntoConstraints = false
        NotifContainer.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10).isActive = true
        NotifContainer.heightAnchor.constraint(equalToConstant: size).isActive = true
        NotifContainer.widthAnchor.constraint(equalToConstant: size).isActive = true
        NotifContainer.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 6).isActive = true
        labelNotif.translatesAutoresizingMaskIntoConstraints = false
        labelNotif.heightAnchor.constraint(equalToConstant: size).isActive = true
        labelNotif.widthAnchor.constraint(equalToConstant: size).isActive = true
        labelNotif.leadingAnchor.constraint(equalTo: NotifContainer.leadingAnchor, constant: 11).isActive = true
        labelNotif.trailingAnchor.constraint(equalTo: NotifContainer.trailingAnchor, constant: 0).isActive = true
        labelNotif.topAnchor.constraint(equalTo: NotifContainer.topAnchor, constant: 5).isActive = true
        labelNotif.bottomAnchor.constraint(equalTo: NotifContainer.bottomAnchor, constant: -5).isActive = true
        additionalLabel.translatesAutoresizingMaskIntoConstraints = false
        additionalLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10).isActive = true
        additionalLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12.5).isActive = true
        additionalLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12.5).isActive = true
        iconContainer.translatesAutoresizingMaskIntoConstraints = false
        iconContainer.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 6).isActive = true
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
        additionalLabel.text = nil
        NotifContainer.backgroundColor = nil
        labelNotif.text = nil
    }
    public func configure(with model: SettingsOption) {
        label.text = model.title
        iconImageView.image = model.icon
        iconContainer.backgroundColor = model.iconBackgroundColor
        additionalLabel.text = model.addLabelText
        NotifContainer.backgroundColor = model.NotifContainerBackgroundColor
        labelNotif.text = model.labelNotification
    }
}
