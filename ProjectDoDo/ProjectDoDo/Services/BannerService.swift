//
//  BannerService.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 10.07.2023.
//

import Foundation

final class BannerService {
    
    let banners: [Banner] = [
        Banner(name: "Бруслетики", price: 230, image: "Бруслетики", type: "banner", counter: 0),
        Banner(name: "Пепперони фреш", price: 299, image: "Пепперони фреш", type: "banner", counter: 0),
        Banner(name: "3 пиццы", price: 1099, image: "3 пиццы", type: "banner", counter: 0),
        Banner(name: "Додстер", price: 169, image: "Додстер", type: "banner", counter: 0),
        Banner(name: "Комбо от 599 Р", price: 599, image: "Комбо от 599 Р", type: "banner", counter: 0),
        Banner(name: "2 соуса", price: 75, image: "2 соуса", type: "banner", counter: 0)
    ]
    
    func fetchBanners() -> [Banner] {
        return banners
    }
}
