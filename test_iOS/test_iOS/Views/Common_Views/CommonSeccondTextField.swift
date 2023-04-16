//
//  CommonFirstTextField.swift
//  test_iOS
//
//  Created by AnnKangHo on 2023/04/16.
//

import UIKit
import Then
import SnapKit
final class CommonSecondTextField: UITextField {
    
    let secondTextField = UITextField().then {
        $0.placeholder = "비밀번호"
        $0.layer.cornerRadius = 8
        $0.layer.borderWidth = 1
        $0.layer.borderColor = UIColor.black.cgColor
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
        addSubview(secondTextField)
    }
    func setLayout(){
        secondTextField.snp.makeConstraints {
            $0.top.equalTo(safeAreaLayoutGuide).inset(271)
            $0.leading.trailing.equalToSuperview().inset(16)
        }
    }
}
