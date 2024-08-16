import UIKit

class SecondViewController: UIViewController {
    
    private var mainButton: UIButton = {
        let button = UIButton()
        button.setTitle("Go to MainVC", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    private var thirdButton: UIButton = {
        let button = UIButton()
        button.setTitle("Go to ThirdVC", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .yellow
        
        let stack = UIStackView(arrangedSubviews: [mainButton, thirdButton])
        stack.axis = .vertical
        stack.distribution = .fillEqually
        
        stack.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stack)
        NSLayoutConstraint.activate([
            stack.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            stack.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
        
        mainButton.addTarget(self, action: #selector(mainButtonTapped), for: .touchUpInside)
        thirdButton.addTarget(self, action: #selector(thirdButtonTapped), for: .touchUpInside)
    }
    
    @objc private func mainButtonTapped() {
        let secondVC = MainViewController()
        secondVC.modalPresentationStyle = .fullScreen
        present(secondVC, animated: true)
    }
    
    @objc private func thirdButtonTapped() {
        let secondVC = ThirdViewController()
        secondVC.modalPresentationStyle = .fullScreen
        present(secondVC, animated: true)
    }
    
}
