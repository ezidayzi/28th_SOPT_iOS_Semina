//
//  SoptViewController.swift
//  week3_seminar
//
//  Created by 김윤서 on 2021/04/24.
//

import UIKit

class SoptViewController: UIViewController {

    @IBOutlet weak var serviceTableView: UITableView!
    
    var serviceListData: [ServiceListDataModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setServiceList()
        
        serviceTableView.delegate = self
        serviceTableView.dataSource = self
        serviceTableView.separatorStyle = .none

    }
    
    func setServiceList() {
        serviceListData.append(contentsOf: [
                ServiceListDataModel(iconImageName: "soptAppIcon1",
                                     title: "OUNCE - 집사를 위한 똑똑한 기록장",
                                     subtitle: "우리 고양이의 까다로운 입맛 정리 서비스"),
                
                ServiceListDataModel(iconImageName: "soptAppIcon2",
                                     title: "포켓유니브",
                                     subtitle: "MZ세대를 위한, 올인원 대학생활 관리 플랫폼"),
                
                ServiceListDataModel(iconImageName: "soptAppIcon3",
                                     title: "MOMO",
                                     subtitle: "책 속의 문장과 함께 쓰는 일기"),
                
                ServiceListDataModel(iconImageName: "soptAppIcon4",
                                     title: "Weathy(웨디)",
                                     subtitle: "나에게 돌아오는 맞춤 날씨 서비스"),
                
                ServiceListDataModel(iconImageName: "soptAppIcon5",
                                     title: "BeMe",
                                     subtitle: "나를 알아가는 질문 다이어리"),
                
                ServiceListDataModel(iconImageName: "soptAppIcon6",
                                     title: "placepic",
                                     subtitle: "우리들끼리 공유하는 최애장소, 플레이스픽"),
                
                ServiceListDataModel(iconImageName: "soptAppIcon7",
                                     title: "몽글(Mongle)",
                                     subtitle: "우리가 만드는 문장 큐레이션 플랫폼, 몽글")
            ])
    }
}

extension SoptViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 106
    }
}

extension SoptViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return serviceListData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let serviceCell = tableView.dequeueReusableCell(withIdentifier: SoptTableViewCell.identifier,for: indexPath) as? SoptTableViewCell else {return UITableViewCell()}
        
        serviceCell.setData(imageName: serviceListData[indexPath.row].iconImageName, title: serviceListData[indexPath.row].title, subtitle: serviceListData[indexPath.row].subtitle)
        
        return serviceCell
    }
    
    
}
