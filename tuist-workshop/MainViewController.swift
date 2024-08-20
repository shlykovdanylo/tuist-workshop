import UIKit

class MainViewController: UIViewController {
    
    private var secondButton: UIButton = {
        let button = UIButton()
        button.setTitle("Go to SecondVC", for: .normal)
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
        
        view.backgroundColor = .blue
        
        let stack = UIStackView(arrangedSubviews: [secondButton, thirdButton])
        stack.axis = .vertical
        stack.distribution = .fillEqually
        
        stack.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stack)
        NSLayoutConstraint.activate([
            stack.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            stack.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
        
        secondButton.addTarget(self, action: #selector(secondButtonTapped), for: .touchUpInside)
        thirdButton.addTarget(self, action: #selector(thirdButtonTapped), for: .touchUpInside)
    }
    
    @objc private func secondButtonTapped() {
        let secondVC = SecondViewController()
        secondVC.modalPresentationStyle = .fullScreen
        present(secondVC, animated: true)
    }
    
    @objc private func thirdButtonTapped() {
        let secondVC = ThirdViewController()
        secondVC.modalPresentationStyle = .fullScreen
        present(secondVC, animated: true)
    }
}

