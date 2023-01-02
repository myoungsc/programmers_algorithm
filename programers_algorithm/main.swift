//
//  main.swift
//  programers_algorithm
//
//  Created by myoungsc on 2023/01/01.
//

import Foundation

/**
 약수의 개수와 덧셈
 https://school.programmers.co.kr/learn/courses/30/lessons/77884
 Lv. 1
 */
func solution(_ left:Int, _ right:Int) -> Int {
  var res = 0
  for i in left ... right {
    print(i)
    var isEven = false
    if i == 1 {
      res -= 1
      continue
    }
    for j in 1 ..< i {
      if j * j == i {
        isEven = true
      }
    }
    res += isEven ? -i : i
  }
  return res
}

/**
 부족한 금액 계산하기
 https://school.programmers.co.kr/learn/courses/30/lessons/82612
 Lv. 1
 */
/*
func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64 {
  var answer:Int64 = Int64(money)
  for i in 1 ... count {
    print(price * i)
    answer -= Int64(price * i)
  }
  return answer >= 0 ? 0 : abs(answer)
}
*/
