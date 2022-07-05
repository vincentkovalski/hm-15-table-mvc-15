import Foundation
import UIKit

struct Section {
    let options: [SettingsOptionType]
}
enum SettingsOptionType {
    case staticCell(model: SettingsOption)
    case switchCell(model: SettingsSwitchOption)
}
struct SettingsOption {
    let title: String
    let icon: UIImage?
    let iconBackgroundColor: UIColor
    // попробуем так сделать дейбел дополнительный
    let addLabelText: String?
    // попробуем так сделать доп уведомление
    let NotifContainerBackgroundColor: UIColor?
    let labelNotification: String?
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

var models = [Section]()

func configure() {
    models.append((Section(options: [
        SettingsOptionType.switchCell(model: SettingsSwitchOption(title: "Авиарежим", icon: UIImage(systemName: "airplane"), iconBackgroundColor: .systemOrange, handler: {
            print("Нажата ячейка Авиарежим")
                }, isOn: false)),
        SettingsOptionType.staticCell(model: SettingsOption(title: "Wi-Fi", icon: UIImage(systemName: "wifi"), iconBackgroundColor: .systemBlue, addLabelText: "Не подключено", NotifContainerBackgroundColor: nil, labelNotification: nil, handler: {
            print("Нажата ячейка Wi-Fi")
        })),
        SettingsOptionType.staticCell(model: SettingsOption(title: "Bluetooth", icon: UIImage(systemName: "dot.radiowaves.right"), iconBackgroundColor: .systemBlue, addLabelText: "Вкл.", NotifContainerBackgroundColor: nil, labelNotification: nil, handler: {
            print("Нажата ячейка Bluetooth")
        })),
        SettingsOptionType.staticCell(model: SettingsOption(title: "Сотовая связь", icon: UIImage(systemName: "antenna.radiowaves.left.and.right"), iconBackgroundColor: .systemGreen, addLabelText: nil, NotifContainerBackgroundColor: nil, labelNotification: nil) {
            print("Нажата ячейка Сотовая связь")
                }),
        SettingsOptionType.staticCell(model: SettingsOption(title: "Режим модема", icon: UIImage(systemName: "personalhotspot"), iconBackgroundColor: .systemGreen, addLabelText: nil, NotifContainerBackgroundColor: nil, labelNotification: nil) {
                }),
        SettingsOptionType.switchCell(model: SettingsSwitchOption(title: "VPN", icon: UIImage(named: "icons8-vpn-status-bar-icon-50")?.withTintColor(UIColor.white), iconBackgroundColor: .systemBlue, handler: {
            print("Нажата ячейка VPN")
                }, isOn: false))
    ]))
    )
    models.append((Section(options: [
        SettingsOptionType.staticCell(model: SettingsOption(title: "Уведомления", icon: UIImage(named: "icons8-notification-center-100")?.withTintColor(UIColor.white), iconBackgroundColor: .systemRed, addLabelText: nil, NotifContainerBackgroundColor: .systemRed, labelNotification: "1") {
            print("Нажата ячейка Уведомления")
                }),
        SettingsOptionType.staticCell(model: SettingsOption(title: "Звуки, тактильные сигналы", icon: UIImage(systemName: "speaker.wave.3"), iconBackgroundColor: .systemRed, addLabelText: nil, NotifContainerBackgroundColor: nil, labelNotification: nil) {
            print("Нажата ячейка Звуки, тактильные сигналы")
                }),
        SettingsOptionType.staticCell(model: SettingsOption(title: "Не беспокоить", icon: UIImage(systemName: "moon"), iconBackgroundColor: .systemIndigo, addLabelText: nil, NotifContainerBackgroundColor: nil, labelNotification: nil) {
            print("Нажата ячейка Не беспокоить")
                }),
        SettingsOptionType.staticCell(model: SettingsOption(title: "Экранное время", icon: UIImage(systemName: "hourglass"), iconBackgroundColor: .systemIndigo, addLabelText: nil, NotifContainerBackgroundColor: nil, labelNotification: nil) {
            print("Нажата ячейка Экранное время")
        }),
    ]))
    )
    models.append((Section(options: [
        SettingsOptionType.staticCell(model: SettingsOption(title: "Основные", icon: UIImage(systemName: "gear"), iconBackgroundColor: .systemGray, addLabelText: nil, NotifContainerBackgroundColor: .systemRed, labelNotification: "1", handler: {
            print("Нажата ячейка Основные")
        })
                                           ),
        SettingsOptionType.staticCell(model: SettingsOption(title: "Пункт управления", icon: UIImage(systemName: "switch.2"), iconBackgroundColor: .systemGray, addLabelText: nil, NotifContainerBackgroundColor: nil, labelNotification: nil) {
            print("Нажата ячейка Пункт управления")
                }),
        SettingsOptionType.staticCell(model: SettingsOption(title: "Экран и яркость", icon: UIImage(systemName: "textformat"), iconBackgroundColor: .systemBlue, addLabelText: nil, NotifContainerBackgroundColor: nil, labelNotification: nil) {
            print("Нажата ячейка Экран и яркость")
                }),
        SettingsOptionType.staticCell(model: SettingsOption(title: "Экран \"Домой\"", icon: UIImage(systemName: "square.grid.3x3.fill.square"), iconBackgroundColor: .systemBlue, addLabelText: nil, NotifContainerBackgroundColor: nil, labelNotification: nil) {
            print("Нажата ячейка Экран \"Домой\"")
        }),
    ]))
    )
}
