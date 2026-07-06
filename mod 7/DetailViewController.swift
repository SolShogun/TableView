import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var parkNameLabel: UILabel!

    @IBOutlet weak var stateLabel: UILabel!

    @IBOutlet weak var activityLabel: UILabel!

    @IBOutlet weak var descriptionLabel: UILabel!

    var park: Park?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let selectedPark = park {

            parkNameLabel.text = selectedPark.name

            stateLabel.text = "State: \(selectedPark.state)"

            activityLabel.text = "Best Activity: \(selectedPark.activity)"

            descriptionLabel.text = selectedPark.description

        }
    }

}