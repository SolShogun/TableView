import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!

    var parks = [

        Park(
            name: "Yellowstone",
            state: "Wyoming",
            activity: "Wildlife Watching",
            description: "America's first national park famous for geysers."
        ),

        Park(
            name: "Yosemite",
            state: "California",
            activity: "Rock Climbing",
            description: "Known for waterfalls and giant sequoias."
        ),

        Park(
            name: "Grand Canyon",
            state: "Arizona",
            activity: "Hiking",
            description: "One of the world's greatest natural wonders."
        ),

        Park(
            name: "Zion",
            state: "Utah",
            activity: "Hiking",
            description: "Beautiful canyon views and trails."
        ),

        Park(
            name: "Acadia",
            state: "Maine",
            activity: "Camping",
            description: "Rocky coastline and mountain scenery."
        ),

        Park(
            name: "Glacier",
            state: "Montana",
            activity: "Photography",
            description: "Snow-covered mountains and lakes."
        ),

        Park(
            name: "Everglades",
            state: "Florida",
            activity: "Airboat Tours",
            description: "Largest tropical wilderness in the U.S."
        ),

        Park(
            name: "Rocky Mountain",
            state: "Colorado",
            activity: "Hiking",
            description: "High elevation mountains and wildlife."
        ),

        Park(
            name: "Olympic",
            state: "Washington",
            activity: "Nature Walks",
            description: "Rainforests, beaches, and mountains."
        ),

        Park(
            name: "Great Smoky Mountains",
            state: "Tennessee",
            activity: "Scenic Driving",
            description: "America's most visited national park."
        )

    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return parks.count
    }

    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "ParkCell", for: indexPath)

        cell.textLabel?.text = parks[indexPath.row].name

        return cell
    }

    func tableView(_ tableView: UITableView,
                   didSelectRowAt indexPath: IndexPath) {

        performSegue(withIdentifier: "showDetails", sender: indexPath)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "showDetails" {

            let destination = segue.destination as! DetailViewController

            let index = (sender as! IndexPath).row

            destination.park = parks[index]
        }
    }

}