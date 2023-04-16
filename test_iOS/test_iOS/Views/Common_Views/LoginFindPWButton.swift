//
//  CommonFirstTextField.swift
//  test_iOS
//
//  Created by AnnKangHo on 2023/04/16.
//

import UIKit
import Then
import SnapKit
final class LoginFindPWButton: UIButton {
    
    let PWButton = UIButton().then {
        $0.setTitle("비밀번호 찾기", for: .normal)
        $0.titleLabel?.textColor = .gray
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 14.0)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addView()
        setLayout()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        addView()
        setLayout()
    }
    func addView(){
        addSubview(PWButton)
    }
    func setLayout(){
        PWButton.snp.makeConstraints {
            $0.bottom.equalTo(safeAreaLayoutGuide).inset(323)
            $0.trailing.equalTo(safeAreaLayoutGuide).inset(16)
        }
    }
}
