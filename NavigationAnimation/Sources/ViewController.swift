import UIKit

class ViewController: UIViewController {
    
    // MARK: - UI
    
    // MARK: - Lyfecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Setups
    
    private func setupView() {
        view.backgroundColor = .systemYellow
    }
    
    private func setupHierarchy() {}
    
    private func setupLayout() {}
    
    // MARK: - Actions
}

