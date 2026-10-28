import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmi: BMI?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if bmi?.value != nil {
            bmiLabel.text = String(format: "%.2f", bmi?.value ?? 0.0)
        }
        if bmi?.advice != nil {
            adviceLabel.text = bmi!.advice
        }
        if bmi?.color != nil {
            view.backgroundColor = bmi!.color
        }
    }
    
    @IBAction func reCalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
}
