//
//  CommonFirstTextField.swift
//  test_iOS
//
//  Created by AnnKangHo on 2023/04/16.
//

import UIKit
import Then
import SnapKit
final class LoginSignUpButton: UIButton {
    
    let signUpButton = UIButton().then {
        $0.setTitle("회원가입", for: .normal)
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
        addSubview(signUpButton)
    }
    func setLayout(){
        signUpButton.snp.makeConstraints {
            $0.bottom.equalTo(safeAreaLayoutGuide).inset(114)
            $0.leading.trailing.equalToSuperview().inset(158)
        }
    }
}
