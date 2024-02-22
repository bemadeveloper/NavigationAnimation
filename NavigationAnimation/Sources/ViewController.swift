import UIKit
import SnapKit

class ViewController: UIViewController {
    
    // MARK: - UI
    private lazy var firstButton: UIButton = {
        let button = UIButton()
        button.setTitle("Facebook", for: .normal)
        button.setTitleColor(.white, for: .normal)
        
        button.setImage(UIImage(named: "image"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.imageEdgeInsets = UIEdgeInsets(top: 12, left: -40, bottom: 12, right: 10)
        
        button.backgroundColor = .systemBlue
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        button.titleEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 30)
        button.layer.cornerRadius = 20
        button.configuration?.imagePadding = 100
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
      
        return button
    }()
    
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
    
    private func setupHierarchy() {
        view.addSubview(firstButton)
    }
    
    private func setupLayout() {
        firstButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.width.equalTo(200)
            make.height.equalTo(40)
        }
    }
    
    // MARK: - Actions
    @objc
    private func buttonTapped() {
        if let url = URL(string: "https://mobdevcourse.com/pl/teach/control/lesson/view?id=302908760&editMode=0") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
        print("Button tapped")
    }
}

