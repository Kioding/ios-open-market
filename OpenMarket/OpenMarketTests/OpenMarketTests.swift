//
//  OpenMarketTests.swift
//  OpenMarketTests
//
//  Created by kio on 2021/05/31.
//

import XCTest
@testable import OpenMarket

class OpenMarketTests: XCTestCase {
    
    func testMockDataFromAssetItem() {
        guard let jsonData = NSDataAsset(name: "Item") else {
            XCTFail("Item 정보 읽기 실패")
            return
        }
        
        let decoder = JSONDecoder()

        guard let decodeData = try? decoder.decode(ItemDetail.self, from: jsonData.data) else {
            XCTFail("Item 디코딩 실패")
            return
        }
        
        let fakeData = ItemDetail(id: 1,
                                  title: "MacBook Pro",
                                  descriptions: "Apple M1 칩은 13형 MacBook Pro에 믿을 수 없을 만큼의 속도와 파워를 선사합니다.\n최대 2.8배 향상된 CPU 성능, 최대 5배 빨라진 그래픽 속도, 최대 11배 빨라진 머신 러닝 성능을 구현하는 최첨단 Apple 제작 Neural Engine, 여기에 무려 20시간 지속되는 Mac 사상 가장 오래가는 배터리까지.\n외장은 Apple의 가장 사랑받는 프로용 노트북 그대로, 하지만 그 능력은 한 차원 더 높아졌습니다.",
                                  price: 1690000,
                                  currency: "KRW",
                                  stock: 1000000000000,
                                  discountedPrice: nil,
                                  thumbnails: ["https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/1-1.png", "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/1-2.png"],
                                  images: ["https://camp-open-market.s3.ap-northeast-2.amazonaws.com/images/1-1.png","https://camp-open-market.s3.ap-northeast-2.amazonaws.com/images/1-2.png"],
                                  registrationDate: 1611523563.719116)
        
        XCTAssertEqual(decodeData, fakeData)
    }
    
    func testMockDataFromAssetItems() {
        guard let jsonData = NSDataAsset(name: "Items") else {
            XCTFail("Items 정보 읽기 실패")
            return
        }
        
        let decoder = JSONDecoder()

        guard let decodeData = try? decoder.decode(ItemPage.self, from: jsonData.data) else {
            XCTFail("Items 디코딩 실패")
            return
        }
    }
}

