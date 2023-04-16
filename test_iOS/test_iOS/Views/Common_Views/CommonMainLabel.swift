//
//  AllPageCustomView.swift
//  test_iOS
//
//  Created by AnnKangHo on 2023/04/16.
//

import UIKit
import Then
import SnapKit
final class CommonMainLabel: UILabel {
    
    let MainLabel = UILabel().then {
        $0.font = UIFont.boldSystemFont(ofSize: 48.0)
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
        MainLabel.text = description
        addView()
        setLayout()
    }
    func addView(){
        addSubview(MainLabel)
    }
    func setLayout(){
        MainLabel.snp.makeConstraints {
            $0.top.equalTo(safeAreaLayoutGuide).inset(119)
            $0.leading.trailing.equalToSuperview().inset(116)
        }
    }
}
