import UIKit

class NextViewController: UIViewController {

    let scrollView = UIScrollView()
    let longTextView = UITextView()

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "NextVc"

        setupSubviews()
    }

    private func setupSubviews() {
        longTextView.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl eget aliquam luctus, nunc nisl aliquet nunc, quis aliquam nisl nunc quis nisl. Donec euismod, nisl eget aliquam luctus, nunc nisl aliquet nunc, quis aliquam nisl nunc quis nisl. Donec euismod, nisl eget aliquam luctus, nunc nisl aliquet nunc, quis aliquam nisl nunc quis nisl. Donec euismod, nisl eget aliquam luctus, nunc nisl aliquet nunc, quis aliquam nisl nunc quis nisl. Donec euismod, nisl eget aliquam luctus, nunc nisl aliquet nunc, quis aliquam nisl nunc quis nisl. Donec euismod, nisl eget aliquam luctus, nunc nisl aliquet nunc, quis aliquam nisl nunc quis nisl. Donec euismod, nisl eget aliquam luctus, nunc nisl aliquet nunc, quis aliquam nisl nunc quis nisl. Donec euismod, nisl eget aliquam luctus, nunc nisl aliquet nunc, quis aliquam nisl nunc quis nisl."
        longTextView.isScrollEnabled = false
        longTextView.backgroundColor = .yellow
        longTextView.font = UIFont.systemFont(ofSize: 30)
        scrollView.backgroundColor = .green

        view.addSubview(scrollView)
        scrollView.addSubview(longTextView)

        scrollView.translatesAutoresizingMaskIntoConstraints = false
        longTextView.translatesAutoresizingMaskIntoConstraints = false

        scrollView.topAnchor.constraint(equalTo: view.centerYAnchor, constant: 20).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        longTextView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        longTextView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        longTextView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        longTextView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
    }
}
