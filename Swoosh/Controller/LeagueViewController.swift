import UIKit

class LeagueViewController: UIViewController {

    @IBOutlet weak var nextButton: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onMenTapped(_ sender: Any) {
        
    }
    
    @IBAction func onWomenTapped(_ sender: Any) {
        
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        
    }
}
