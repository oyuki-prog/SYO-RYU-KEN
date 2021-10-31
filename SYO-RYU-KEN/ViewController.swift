//
//  ViewController.swift
//  SYO-RYU-KEN
//
//  Created by o.yuki on 2021/10/31.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.image = UIImage(named: "attak1")

    }
    
    @IBOutlet weak var imageView: UIImageView!
    
    var imageArrayAttack : Array<UIImage> = []
    
    func appendArray() {
        if imageArrayAttack.isEmpty {
            for i in 1 ... 20 {
                let attackImage = UIImage(named: "attak\(i)")!
                imageArrayAttack.append(attackImage)
            }
        }
    }
    
    @IBAction func startButton(_ sender: Any) {
        appendArray()
        imageView.animationImages = imageArrayAttack
        imageView.animationDuration =  1
        imageView.animationRepeatCount = 1
        imageView.startAnimating()
    }
}

