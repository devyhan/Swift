//
//  CustomTableViewCell.swift
//  TableViewPractice
//
//  Created by 요한 on 2020/05/26.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    let customButton = UIButton()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        // 커스텀 뷰를 올릴떄에는 contentView 위에 추가
        customButton.backgroundColor = .black
        contentView.addSubview(customButton)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
            
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
