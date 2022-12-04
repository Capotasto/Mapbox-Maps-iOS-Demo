import UIKit
import MapboxMaps

class ViewController: UIViewController {

    internal var mapView: MapView!
    private let tokyoStation = CLLocationCoordinate2D(latitude: 35.6812, longitude: 139.7671)

    override public func viewDidLoad() {
        super.viewDidLoad()
        let token = Bundle.main.object(forInfoDictionaryKey: "MBXAccessToken") as? String ?? ""

        let option = MapInitOptions(
            resourceOptions: ResourceOptions(accessToken: token),
            cameraOptions: CameraOptions(center: tokyoStation, zoom: 14.5)
        )
        mapView = MapView(frame: view.bounds, mapInitOptions: option)
        mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]

        self.view.addSubview(mapView)
    }
}
