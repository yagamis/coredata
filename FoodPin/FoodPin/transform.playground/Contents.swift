//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

var 餐馆 = ["咖啡胡同", "霍米", "茶.家", "洛伊斯咖啡", "贝蒂生蚝", "福奇餐馆", "阿波画室", "伯克街面包坊", "黑氏巧克力", "惠灵顿雪梨", "北州", "布鲁克林塔菲", "格雷厄姆大街肉", "华夫饼 & 沃夫", "五叶", "眼光咖啡", "忏悔", "巴拉菲娜", "多尼西亚", "皇家橡树", "泰咖啡"]

var 餐馆图片 =
["cafedeadend.jpg", "homei.jpg", "teakha.jpg", "cafeloisl.jpg", "petiteoyster.jpg", "forkeerestaurant.jpg", "posatelier.jpg", "bourkestreetbakery.jpg", "haighschocolate.jpg", "palominoespresso.jpg", "upstate.jpg", "traif.jpg", "grahamavenuemeats.jpg", "wafflewolf.jpg", "fiveleaves.jpg", "cafelore.jpg", "confessional.jpg", "barrafina.jpg", "donostia.jpg", "royaloak.jpg", "thaicafe.jpg"]

var 餐馆地点 = ["香港", "香港", "香港", "香港", "香港", "香港", "香港", "悉尼", "悉尼", "悉尼", "纽约", "纽约", "纽约", "纽约", "纽约", "纽约", "纽约", "伦敦", "伦敦", "伦敦", "伦敦"]

var 餐馆类型 = ["咖啡 & 茶店","咖啡", "茶屋", "奥地利式 & 休闲饮料","法式", "面包房", "面包房", "巧克力", "咖啡", "美式 & 海鲜", "美式", "美式","早餐 & 早午餐", "法式 & 茶", "咖啡 & 茶", "拉丁美式", "西班牙式", "西班牙式", "西班牙式", "英式", "泰式"]

var 去过的餐馆 = [Bool](count: 21, repeatedValue: false)

for 位置 in 0..<餐馆.count {
    
    print("Restaurant(name: \"\(餐馆[位置])\", type: \"\(餐馆类型[位置])\", location: \"\(餐馆地点[位置])\", image: \"\(餐馆图片[位置])\", isVisited: \(去过的餐馆[位置]))",",")
    
}

Restaurant(name: "咖啡胡同", type: "咖啡 & 茶店", location: "香港上环德辅道西78号G/F", image: "cafedeadend.jpg", isVisited: false) ,
Restaurant(name: "霍米", type: "咖啡", location: "香港上环文咸东街太平山22-24A，B店", image: "homei.jpg", isVisited: false) ,
Restaurant(name: "茶.家", type: "茶屋", location: "香港葵涌和宜合道熟食市场地下", image: "teakha.jpg", isVisited: false) ,
Restaurant(name: "洛伊斯咖啡", type: "奥地利式 & 休闲饮料", location: "香港新界葵涌屏富径", image: "cafeloisl.jpg", isVisited: false) ,
Restaurant(name: "贝蒂生蚝", type: "法式", location: "香港九龙尖沙咀河内道18号(近港铁尖东站N3,N4出口) ", image: "petiteoyster.jpg", isVisited: false) ,
Restaurant(name: "福奇餐馆", type: "面包房", location: "香港岛中环都爹利街13号乐成行地库中层", image: "forkeerestaurant.jpg", isVisited: false) ,
Restaurant(name: "阿波画室", type: "面包房", location: "香港岛铜锣湾轩尼诗道555号崇光百货地库2楼30号铺", image: "posatelier.jpg", isVisited: false) ,
Restaurant(name: "伯克街面包坊", type: "巧克力", location: "4 Hickson Rd、The Rocks NSW 2000", image: "bourkestreetbakery.jpg", isVisited: false) ,
Restaurant(name: "黑氏巧克力", type: "咖啡", location: "31 Wheat Rd、Sydney NSW 2001", image: "haighschocolate.jpg", isVisited: false) ,
Restaurant(name: "惠灵顿雪梨", type: "美式 & 海鲜", location: "1/11-31 York Street Sydney NSW Australia、Sydney NSW 2000", image: "palominoespresso.jpg", isVisited: false) ,
Restaurant(name: "北州", type: "美式", location: "Macy's、151 W 34th St Fifth Floor、New York, NY 10001", image: "upstate.jpg", isVisited: false) ,
Restaurant(name: "布鲁克林塔菲", type: "美式", location: "250 8th Ave、New York, NY 10107", image: "traif.jpg", isVisited: false) ,
Restaurant(name: "格雷厄姆大街肉", type: "早餐 & 早午餐", location: "55-1 Riverwalk Pl、West New York, NJ 07093", image: "grahamavenuemeats.jpg", isVisited: false) ,
Restaurant(name: "华夫饼 & 沃夫", type: "法式 & 茶", location: "1585 Broadway、New York, NY 10036-8200", image: "wafflewolf.jpg", isVisited: false) ,
Restaurant(name: "五叶", type: "咖啡 & 茶", location: "1460 Broadway、New York, NY 10036", image: "fiveleaves.jpg", isVisited: false) ,
Restaurant(name: "眼光咖啡", type: "拉丁美式", location: "250 8th Ave、New York, NY 10107", image: "cafelore.jpg", isVisited: false) ,
Restaurant(name: "忏悔", type: "西班牙式", location: "822 Lexington Ave、New York, NY 10065", image: "confessional.jpg", isVisited: false) ,
Restaurant(name: "巴拉菲娜", type: "西班牙式", location: "Unit 2, Eldon Chambers、30-32 Fleet St、London EC4Y 1AA", image: "barrafina.jpg", isVisited: false) ,
Restaurant(name: "多尼西亚", type: "西班牙式", location: "Waterloo Station、London SE1 7LY", image: "donostia.jpg", isVisited: false) ,
Restaurant(name: "皇家橡树", type: "英式", location: "Unit 4a、44-58 Brompton Rd、London SW3 1BW", image: "royaloak.jpg", isVisited: false) ,
Restaurant(name: "泰咖啡", type: "泰式", location: "7-9 Golders Green Rd、London NW11 8DY", image: "thaicafe.jpg", isVisited: false)
