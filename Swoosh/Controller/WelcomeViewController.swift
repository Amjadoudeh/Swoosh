import UIKit

class WelcomeViewController: UIViewController {

  
    @IBOutlet weak var swoosh: UIImageView!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        swoosh.frame = CGRect(x: view.frame.size.width / 2  - swoosh.frame.size.width / 2,
            y: 50,
            width: swoosh.frame.size.width,
            height: swoosh.frame.size.height)
        backgroundImage.frame = view.frame
    }

    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboardSegue) {
        
    }

}

