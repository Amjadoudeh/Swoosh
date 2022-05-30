import UIKit

class SkillViewController: UIViewController {

    // MARK: - Properties
    var player : Player?
    var league: desiredLeague?
    var level: playerLevel?
    
    // MARK: - IBOutlet
    @IBOutlet weak var beginnerButton: BorderButton!
    @IBOutlet weak var ballerButton: BorderButton!
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Set up
    
    // MARK: - Functions
    
    private func selectedButton(selected: playerLevel) {
        switch selected {
        case .baller :
            //unselect beginner button
            beginnerButton.backgroundColor = UIColor.ButtonsColor.notSelected
            
            //select baller
            ballerButton.backgroundColor = UIColor.ButtonsColor.selectedInLevel
            
        case .beginner :
            //select begginer
            beginnerButton.backgroundColor = UIColor.ButtonsColor.selectedInLevel

            
            // unselect baller
            ballerButton.backgroundColor = UIColor.ButtonsColor.notSelected

        }
    }
    
    // MARK: - Actions
    
    // selected beginner
    @IBAction func didTapBeginner(_ sender: Any) {
        level = .beginner
        selectedButton(selected: level!)
    }
    
    // selected baller
    @IBAction func didTapBaller(_ sender: Any) {
        level = .baller
        selectedButton(selected: level!)
    }
    
    // finish
    @IBAction func didTapFinish(_ sender: Any) {
        guard let level = level else {
            errorButtonAnimation().buttonAnimation(button: beginnerButton)
            errorButtonAnimation().buttonAnimation(button: ballerButton)
            return
        }
        guard let league = league else {
            fatalError("something went wrong passing data from : league TO skill")
        }
        player = Player(league: league, level: level)
        print("Player : " + league.description, level.description)
    }
    
}
