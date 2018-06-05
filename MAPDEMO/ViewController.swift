//
//  ViewController.swift
//  MAPDEMO
//
//  Created by gdcp on 2018/6/5.
//  Copyright © 2018年 gdcp. All rights reserved.
//

import UIKit
import MapKit
class ViewController: UIViewController,MKMapViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        let mapView = MKMapView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height))
        mapView.mapType = .standard
        mapView.region = MKCoordinateRegion(center: CLLocationCoordinate2DMake(23.16,113.23), span: MKCoordinateSpanMake(1,1))
        let pn = MKPointAnnotation()
        pn.coordinate = CLLocationCoordinate2DMake(23.16, 113.23)
        pn.title = "GuangZhou"
        pn.subtitle = "GuangDong,China"
        mapView.addAnnotation(pn)
        self.view.addSubview(mapView)
    }

    public func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView?{
        let view = MKAnnotationView(annotation: annotation, reuseIdentifier:"id")
        view.canShowCallout = true
        let view1 = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        view1.backgroundColor = UIColor.blue
        let view2 = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
         view1.backgroundColor = UIColor.red
        view.leftCalloutAccessoryView = view1
        view.rightCalloutAccessoryView = view2
        view.isDraggable = true
        return view
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

