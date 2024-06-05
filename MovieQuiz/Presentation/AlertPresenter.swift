import UIKit

class AlertPresenter: MovieQuizViewDelegate {
// MARK: -MovieQuizViewDelegate
    
    weak var MovieQuiz: UIViewController?
    
    func showAlert (model: AlertModel?) {
        
        guard let model = model else { return }
        
        let alert = UIAlertController(
            title: model.title,
            message: model.text,
            preferredStyle: .alert)
        
        let action = UIAlertAction(title: model.buttonText, style: .default) {_ in 
            model.completion()
        }
        
        alert.addAction(action)
        
        MovieQuiz?.self.present(alert, animated: true, completion: nil)
    }
}
