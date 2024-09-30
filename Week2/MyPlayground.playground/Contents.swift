import UIKit

var x = 5
x += 1
print(x)

let a = 10
let b = 20
let sum = a+b
print(sum)

let score = 70
score >= 60 ? print("합격") : print("불합격")

let isMember = true
let points = 101

if isMember && (points >= 100) {
    print("할인가능")
} else {
    print("할인 불가능")
}

let number = 1...5
for i in number {
    print(i)
}

let day = 1
switch(day) {
case 1...5:
    print("주중")
case 6...7:
    print("주말")
default:
    break
}

var count = 0
while (count <= 5) {
    print("Count: \(count)")
    count += 1
}
