import UIKit

class MainViewController: UIViewController {
    
    private var button: UIButton = {
        let button = UIButton()
        button.setTitle("Go to SecondVC", for: .normal)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue

        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        NSLayoutConstraint.activate([
            self.button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
        
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }

    @objc private func buttonTapped() {
        let secondVC = SecondViewController()
        secondVC.modalPresentationStyle = .fullScreen
        present(secondVC, animated: true)
    }
}

