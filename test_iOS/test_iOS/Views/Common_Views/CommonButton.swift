//
//  CommonFirstTextField.swift
//  test_iOS
//
//  Created by AnnKangHo on 2023/04/16.
//

import UIKit
import Then
import SnapKit
final class CommonButton: UIButton {
    
    let blueButton = UIButton().then {
        $0.layer.cornerRadius = 8
        $0.backgroundColor = .buttonColor
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
    init(description: String) {
        super.init(frame: .zero)
        blueButton.setTitle(description, for: .normal)
        addView()
        setLayout()
    }
    func addView(){
        addSubview(blueButton)
    }
    func setLayout(){
        blueButton.snp.makeConstraints {
            $0.bottom.equalTo(safeAreaLayoutGuide).inset(54)
            $0.leading.trailing.equalToSuperview().inset(16)
        }
    }
}
