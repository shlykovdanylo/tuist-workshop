import UIKit

class ThirdViewController: UIViewController {

    private var mainButton: UIButton = {
        let button = UIButton()
        button.setTitle("Go to MainVC", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    private var secondButton: UIButton = {
        let button = UIButton()
        button.setTitle("Go to SecondVC", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        
        let stack = UIStackView(arrangedSubviews: [mainButton, secondButton])
        stack.axis = .vertical
        stack.distribution = .fillEqually
        
        stack.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stack)
        NSLayoutConstraint.activate([
            stack.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            stack.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
        
        mainButton.addTarget(self, action: #selector(mainButtonTapped), for: .touchUpInside)
        secondButton.addTarget(self, action: #selector(secondButtonTapped), for: .touchUpInside)
    }
    
    @objc private func mainButtonTapped() {
        let secondVC = MainViewController()
        secondVC.modalPresentationStyle = .fullScreen
        present(secondVC, animated: true)
    }
    
    @objc private func secondButtonTapped() {
        let secondVC = SecondViewController()
        secondVC.modalPresentationStyle = .fullScreen
        present(secondVC, animated: true)
    }
}
