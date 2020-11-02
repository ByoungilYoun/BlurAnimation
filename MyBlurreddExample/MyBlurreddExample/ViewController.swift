//
//  ViewController.swift
//  MyBlurreddExample
//
//  Created by 윤병일 on 2020/11/02.
//

import UIKit

class ViewController: UIViewController {

  //MARK: - Properties
  private let imageView : UIImageView = {
    let imageView = UIImageView(image: UIImage(named: "background"))
    imageView.contentMode = .scaleAspectFill
    return imageView
  }()
  
  //MARK: - LifeCycle 
  override func viewDidLoad() {
    super.viewDidLoad()
    view.addSubview(imageView)
    imageView.frame = view.bounds
    
    createBlur()
  }
  
  //MARK: - createBlur()
  func createBlur() {
    let blurEffect = UIBlurEffect(style: .dark) //style 에 여러가지가 제공된다.
    let visualEffectView = UIVisualEffectView(effect: blurEffect)
    visualEffectView.frame = view.bounds
    visualEffectView.alpha = 0
    view.addSubview(visualEffectView)
    
    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
      UIView.animate(withDuration: 0.5) {
        visualEffectView.alpha = 1
      }
    }
  }
}

