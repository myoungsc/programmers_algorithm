//
//  main.swift
//  programers_algorithm
//
//  Created by myoungsc on 2023/01/01.
//

import Foundation

/**
 가장 가까운 같은 글자
 https://school.programmers.co.kr/learn/courses/30/lessons/142086
 Lv. 1
 */
/*
func solution(_ s:String) -> [Int] {
  var res: [Int] = []
  var dicIndex: [String: Int] = [:]
  for (i, str) in s.map({ String($0) }).enumerated() {
    if let index = dicIndex[str] {
      res.append(i-index)
    } else {
      res.append(-1)
    }
    dicIndex[str] = i
  }
  return res
}
*/

/*
 문자열 내 마음대로 정렬하기
 https://school.programmers.co.kr/learn/courses/30/lessons/12915
 Lv. 1
 **/
/*
func solution(_ strings:[String], _ n:Int) -> [String] {
  let arr = strings.sorted{ Array($0)[n] < Array($1)[n] }
  var sortedArr: [[String]] = []
  var index: Int = 0
  for (i, element) in arr.enumerated() {
    if i == 0 {
      sortedArr.append([element])
    } else {
      var temp = sortedArr[index]
      if Array(temp[0])[n] == Array(element)[n] {
        temp.append(element)
        sortedArr[index] = temp
      } else {
        sortedArr.append([element])
        index += 1
      }
    }
  }
  var res: [String] = []
  for strs in sortedArr {
    res += strs.sorted{ $0 < $1 }
  }
  return res
}
*/

/**
 약수의 개수와 덧셈
 https://school.programmers.co.kr/learn/courses/30/lessons/77884
 Lv. 1
 */
/*
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
*/
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
