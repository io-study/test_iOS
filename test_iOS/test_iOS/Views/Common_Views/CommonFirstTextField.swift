//
//  CommonFirstTextField.swift
//  test_iOS
//
//  Created by AnnKangHo on 2023/04/16.
//

import UIKit
import Then
import SnapKit
final class CommonFirstTextField: UITextField {
    
    let firstTextField = UITextField().then {
        $0.placeholder = "아이디"
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
        addSubview(firstTextField)
    }
    func setLayout(){
        firstTextField.snp.makeConstraints {
            $0.top.equalTo(safeAreaLayoutGuide).inset(211)
            $0.leading.trailing.equalToSuperview().inset(16)
        }
    }
}
