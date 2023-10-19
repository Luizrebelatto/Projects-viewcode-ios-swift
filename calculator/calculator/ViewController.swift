import UIKit

class ViewController: UIViewController {

    var resultLabel: UILabel!
    var numberButtons = [UIButton]()
    var operationButtons = [UIButton]()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        // Result Label
        resultLabel = UILabel()
        resultLabel.text = "0"
        resultLabel.textAlignment = .right
        resultLabel.font = UIFont.systemFont(ofSize: 36)
        resultLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(resultLabel)

        // Number Buttons
        for i in 0...9 {
            let button = UIButton(type: .system)
            button.setTitle("\(i)", for: .normal)
            button.titleLabel?.font = UIFont.systemFont(ofSize: 24)
            button.tag = i
            button.addTarget(self, action: #selector(numberButtonPressed), for: .touchUpInside)
            numberButtons.append(button)
        }

        // Operation Buttons
        let operations = ["+", "-", "*", "/"]
        for operation in operations {
            let button = UIButton(type: .system)
            button.setTitle(operation, for: .normal)
            button.titleLabel?.font = UIFont.systemFont(ofSize: 24)
            button.addTarget(self, action: #selector(operationButtonPressed), for: .touchUpInside)
            operationButtons.append(button)
        }

        // Stack Views
        let numberStackView = UIStackView(arrangedSubviews: numberButtons)
        numberStackView.axis = .horizontal
        numberStackView.distribution = .fillEqually
        numberStackView.spacing = 10
        numberStackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(numberStackView)

        let operationStackView = UIStackView(arrangedSubviews: operationButtons)
        operationStackView.axis = .vertical
        operationStackView.distribution = .fillEqually
        operationStackView.spacing = 10
        operationStackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(operationStackView)

        // Constraints
        NSLayoutConstraint.activate([
            resultLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            resultLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            resultLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),

            numberStackView.topAnchor.constraint(equalTo: resultLabel.bottomAnchor, constant: 20),
            numberStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            numberStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),

            operationStackView.topAnchor.constraint(equalTo: numberStackView.bottomAnchor, constant: 20),
            operationStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }

    @objc func numberButtonPressed(_ sender: UIButton) {
        // Handle number button press
        if let currentText = resultLabel.text, let buttonText = sender.title(for: .normal) {
            if currentText == "0" {
                resultLabel.text = buttonText
            } else {
                resultLabel.text = currentText + buttonText
            }
        }
    }

    @objc func operationButtonPressed(_ sender: UIButton) {
        // Handle operation button press
        if let currentText = resultLabel.text, let buttonText = sender.title(for: .normal) {
            resultLabel.text = currentText + " " + buttonText + " "
        }
    }
}
