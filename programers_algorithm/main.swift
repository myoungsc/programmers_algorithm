//
//  main.swift
//  programers_algorithm
//
//  Created by myoungsc on 2023/01/01.
//

import Foundation

/**
 개인정보 수집 유효기간
 https://school.programmers.co.kr/learn/courses/30/lessons/150370
 Lv.1
 */
/*
 func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
   let todayToInt = today.split{ $0 == "." }.compactMap{ Int($0) }
   
   var termDic: [String: Int] = [:]
   for term in terms {
     let temp = term.split{ $0 == " " }.compactMap{ String($0) }
     if let termMonth = Int(temp[1]) {
       termDic[temp[0]] = termMonth
     }
   }
   
   let todayA = todayToInt[0] * 12 * 28 + todayToInt[1] * 28 + todayToInt[2]
   
   var res: [Int] = []
   for (i, privacy) in privacies.enumerated() {
     let splitText = privacy.split{ $0 == " " }.map{ String($0) }
     let key = splitText[1]

     let calDay = splitText[0].split{ $0 == "." }.compactMap{ Int($0) }
     guard let month = termDic[key] else { continue }

     let calDayA = calDay[0] * 12 * 28 + (calDay[1] + month) * 28 + calDay[2]
         
     if todayA >= calDayA {
       res.append(i+1)
     }
   }
   return res
 }
 */


/**
 성격 유형 검사하기
 https://school.programmers.co.kr/learn/courses/30/lessons/118666
 Lv. 1
 */
/*
 func solution(_ survey:[String], _ choices:[Int]) -> String {
   var indicator: [String : Int] = ["R": 0, "T": 0, "C": 0, "F": 0, "J": 0, "M": 0, "A": 0, "N": 0]
   
   for i in 0 ..< survey.count {
     let score = choices[i]
     let strs = survey[i].map{ String($0) }
     if score == 4 { continue }
     if score < 4 {
       if let value = indicator[strs[0]] {
         indicator[strs[0]] = value + (4-score)
       }
     } else {
       if let value = indicator[strs[1]] {
         indicator[strs[1]] = value + (score-4)
       }
     }
   }
   
   let keys = "RTCFJMAN".map{ String($0) }
   var res = ""
   for i in stride(from: 0, to: keys.count, by: 2) {
     if let a = indicator[keys[i]], let b = indicator[keys[i+1]] {
       if a == b {
         res += keys[i] < keys[i+1] ? keys[i] : keys[i+1]
       } else {
         res += a > b ? keys[i] : keys[i+1]
       }
     }
   }
   return res
 }
 */

/**
 크기가 작은 부분 문자열
 https://school.programmers.co.kr/learn/courses/30/lessons/147355
 Lv1
 */
/*
func solution(_ t:String, _ p:String) -> Int {
  let count = p.count
  var res = 0
  for i in stride(from: 0, to: t.count-count+1, by: 1) {
    let startIndex = t.index(t.startIndex, offsetBy: i)// 사용자지정 시작인덱스
    let endIndex = t.index(t.startIndex, offsetBy: i+count-1)
    if let value = Int(String(t[startIndex ... endIndex])),
       let pInt = Int(p),
        value <= pInt {
      res += 1
    }
  }
  return res
}
*/

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
