import UIKit

class LeagueViewController: UIViewController {
    // MARK: - Properties

    private static let segue = "segueToSkillViewController"
    private var selectedLeague: desiredLeague?
    
    @IBOutlet weak var menButton: BorderButton!
    @IBOutlet weak var womanButton: BorderButton!
    @IBOutlet weak var coedButton: BorderButton!
    @IBOutlet weak var nextButton: BorderButton!
    
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
            SelectedButtonAnimation().scaleSelectedButton(selectedButton: menButton, otherButtons: [womanButton, coedButton])
            womanButton.backgroundColor = UIColor.ButtonsColor.notSelected
            coedButton.backgroundColor = UIColor.ButtonsColor.notSelected
        case .woman:
            menButton.backgroundColor = UIColor.ButtonsColor.notSelected
            womanButton.backgroundColor = UIColor.ButtonsColor.selectedInDesiredLeague
            SelectedButtonAnimation().scaleSelectedButton(selectedButton: womanButton, otherButtons: [menButton, coedButton])
            coedButton.backgroundColor = UIColor.ButtonsColor.notSelected
        case .coed:
            menButton.backgroundColor = UIColor.ButtonsColor.notSelected
            womanButton.backgroundColor = UIColor.ButtonsColor.notSelected
            coedButton.backgroundColor = UIColor.ButtonsColor.selectedInDesiredLeague
            SelectedButtonAnimation().scaleSelectedButton(selectedButton: coedButton, otherButtons: [womanButton, menButton])
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
            ErrorButtonAnimation().buttonAnimation(button: menButton)
            ErrorButtonAnimation().buttonAnimation(button: womanButton)
            ErrorButtonAnimation().buttonAnimation(button: coedButton)
            return
        }
        performSegue(withIdentifier: LeagueViewController.segue, sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillViewController {
            skillVC.league = selectedLeague
        } 
    }
}
// MARK: - Extensions
