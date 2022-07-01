import Foundation

struct Section {
    let options: [SettingsOptionType]
}
enum SettingsOptionType {
    case staticCell(model: SettingsOption)
    case switchCell(model: SettingsSwitchOption)
    case addLabelCell(model: SettingsAdditionalLabelOption)
    case notificationCell(model: SettingsNotificationOption)
}
struct SettingsNotificationOption {
    let title: String
    let icon: UIImage?
    let iconBackgroundColor: UIColor
    let addLabelText: String
    let handler: (() -> Void)
    let labelContainerBackgroundColor: UIColor
}
struct SettingsAdditionalLabelOption {
    let title: String
    let icon: UIImage?
    let iconBackgroundColor: UIColor
    let addLabelText: String
    let handler: (() -> Void)
}
struct SettingsOption {
    let title: String
    let icon: UIImage?
    let iconBackgroundColor: UIColor
    let handler: (() -> Void)
}
struct SettingsSwitchOption {
    let title: String
    let icon: UIImage?
    let iconBackgroundColor: UIColor
    let handler: (() -> Void)
    // дополнительное свойство
    var isOn: Bool
}
