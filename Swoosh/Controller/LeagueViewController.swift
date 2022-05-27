import UIKit

class LeagueViewController: UIViewController {

    var player: Player!
    
    @IBOutlet weak var nextButton: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player()
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onMenTapped(_ sender: Any) {
        player.desiredLeague = "men"
        nextButton.isEnabled = true
        
    }
    
    @IBAction func onWomenTapped(_ sender: Any) {
        player.desiredLeague = "women"
        nextButton.isEnabled = true
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        player.desiredLeague = "coed"
        nextButton.isEnabled = true
    }
    
    
}
