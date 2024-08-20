import UIKit

class SecondViewController: UIViewController {
    
    private var backButton: UIButton = {
        let button = UIButton()
        button.setTitle("Go Back", for: .normal)
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
        
        let stack = UIStackView(arrangedSubviews: [backButton, thirdButton])
        stack.axis = .vertical
        stack.distribution = .fillEqually
        
        stack.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stack)
        NSLayoutConstraint.activate([
            stack.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            stack.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
        
        backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        thirdButton.addTarget(self, action: #selector(thirdButtonTapped), for: .touchUpInside)
    }
    
    @objc private func backButtonTapped() {
        dismiss(animated: true)
    }
    
    @objc private func thirdButtonTapped() {
        let secondVC = ThirdViewController()
        secondVC.modalPresentationStyle = .fullScreen
        present(secondVC, animated: true)
    }
    
}
