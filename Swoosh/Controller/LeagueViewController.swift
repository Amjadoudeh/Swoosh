import UIKit

enum desiredLeague {
    case men, woman, coed
}

class LeagueViewController: UIViewController {
    // MARK: - Properties
    private static let segue = "segueToSkillViewController"
    private var selectedLeague: desiredLeague?
    
    @IBOutlet weak var menButton: BorderButton!
    @IBOutlet weak var womanButton: BorderButton!
    @IBOutlet weak var coedButton: BorderButton!
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // MARK: - Set up
    
    
    // MARK: - Functions
    
    //verify wich one is selected to change its background
    private func selectedButton(selected: desiredLeague) {
        switch selected {
        case .men:
            menButton.backgroundColor = UIColor.ButtonsColor.selectedInDesiredLeague
            womanButton.backgroundColor = UIColor.ButtonsColor.notSelected
            coedButton.backgroundColor = UIColor.ButtonsColor.notSelected
        case .woman:
            menButton.backgroundColor = UIColor.ButtonsColor.notSelected
            womanButton.backgroundColor = UIColor.ButtonsColor.selectedInDesiredLeague
            coedButton.backgroundColor = UIColor.ButtonsColor.notSelected
        case .coed:
            menButton.backgroundColor = UIColor.ButtonsColor.notSelected
            womanButton.backgroundColor = UIColor.ButtonsColor.notSelected
            coedButton.backgroundColor = UIColor.ButtonsColor.selectedInDesiredLeague
        }
    }
    
    
    // MARK: - Actions
    
    @IBAction func didSelectMan(_ sender: Any) {
        selectedLeague = .men
        selectedButton(selected: selectedLeague!)
    }
    @IBAction func didSelectWoman(_ sender: Any) {
        selectedLeague = .woman
        selectedButton(selected: selectedLeague!)
    }
    @IBAction func didSelectCoed(_ sender: Any) {
        selectedLeague = .coed
        selectedButton(selected: selectedLeague!)
    }
    
    @IBAction func didTapNextButton(_ sender: Any) {
        guard selectedLeague != nil else {
            errorButtonAnimation().buttonAnimation(button: menButton)
            errorButtonAnimation().buttonAnimation(button: womanButton)
            errorButtonAnimation().buttonAnimation(button: coedButton)
            return
        }
        performSegue(withIdentifier: LeagueViewController.segue, sender: nil)
    }
    

}
// MARK: - Extensions
