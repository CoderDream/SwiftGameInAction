import UIKit

var str = "Hello, playground"
//(224.0, 210.0, 32.0, 32.0) - (222.0, 70.0, 8.0, 16.0)
let rect1 = CGRect(x: 224, y: 210, width: 32, height: 32)
let rect2 = CGRect(x: 222, y: 200, width: 8, height: 16)
let check = rect1.intersects(rect2)
print("\(check)")
