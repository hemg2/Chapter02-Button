//
//  ViewController.swift
//  Chapter02-Button
//
//  Created by 1 on 2022/07/06.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 버튼 객체를 생성하고, 속성을 설정한다
        let btn = UIButton(type: .system) //1
        btn.frame = CGRect(x: 50, y:100, width: 150, height: 30) //2
        btn.setTitle("테스트 버튼", for: .normal) //3
        
        //버튼을 수평 중앙 정렬한다.
        btn.center = CGPoint(x: self.view.frame.size.width / 2, y: 100)
        
        //루트 뷰에 버튼을 추가한다.
        self.view.addSubview(btn)
        
        // 버튼의 이벤트와 메소드 btnOnClick(_:)을 연결한다.
        btn.addTarget(self, action: #selector(btnOnClick(_:)), for: .touchUpInside)
    }
    @objc func btnOnClick(_ sender: Any) {
        // 호출한 객체가 버튼이라면
        if let btn = sender as? UIButton {
            btn.setTitle("클릭되었습니다", for: .normal)
        }
    }


}



/*
 class OutletViewController: UIViewController {
// 맴버 변수 subject를 선언한다.
var subject : UILabel!   <- 선언과 동시에 초기화!

override func viewDidLoad() {
 // 레이블 객체를 추가하고 영역을 정의한다.
    self.subject = UILabel()
    self.subject.frame = CGRect(x: 50, y: 150, width: 100, height: 30)

 // subject 레이블을 루트 뷰에 추가한다.
    self.view.addSubview(subject)
}

@objc func sayHello(_ sender: Any) {
    self.subject.text = "GoodBye~!, IB!"
}
 }
}*/

