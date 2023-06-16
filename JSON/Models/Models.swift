//
//  Models.swift (5.0)
//  JSON
//  
//  Created by Alexey Zinoviev on 16.06.2023
//
	
import Foundation

// from json2kt.com
struct Documents: Decodable {
//    let items           : [Items]?
    var itemsTotalCount : Int
    var itemsPerPage    : Int
    var currentPage     : Int
    var pagesTotalCount : Int
    var asdasd: Int
}

struct Items: Decodable {

  let eoNumber         : String?
  //let hasSvg           : Bool?
  //let zipFileLength    : String?
  let publishDateShort : String?
  let complexName      : String?
  //let pagesCount       : Int?
  //let pdfFileLength    : Int?
  let jdRegNumber      : String?
  let jdRegDate        : String?
  let title            : String?
  let viewDate         : String?
  let id               : String?

 /*
    enum CodingKeys: String, CodingKey {

    case eoNumber         = "eoNumber"
    case hasSvg           = "hasSvg"
    case zipFileLength    = "zipFileLength"
    case publishDateShort = "publishDateShort"
    case complexName      = "complexName"
    case pagesCount       = "pagesCount"
    case pdfFileLength    = "pdfFileLength"
    case jdRegNumber      = "jdRegNumber"
    case jdRegDate        = "jdRegDate"
    case title            = "title"
    case viewDate         = "viewDate"
    case id               = "id"
  
  }

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    eoNumber         = try values.decodeIfPresent(String.self , forKey: .eoNumber         )
    hasSvg           = try values.decodeIfPresent(Bool.self   , forKey: .hasSvg           )
    zipFileLength    = try values.decodeIfPresent(String.self , forKey: .zipFileLength    )
    publishDateShort = try values.decodeIfPresent(String.self , forKey: .publishDateShort )
    complexName      = try values.decodeIfPresent(String.self , forKey: .complexName      )
    pagesCount       = try values.decodeIfPresent(Int.self    , forKey: .pagesCount       )
    pdfFileLength    = try values.decodeIfPresent(Int.self    , forKey: .pdfFileLength    )
    jdRegNumber      = try values.decodeIfPresent(String.self , forKey: .jdRegNumber      )
    jdRegDate        = try values.decodeIfPresent(String.self , forKey: .jdRegDate        )
    title            = try values.decodeIfPresent(String.self , forKey: .title            )
    viewDate         = try values.decodeIfPresent(String.self , forKey: .viewDate         )
    id               = try values.decodeIfPresent(String.self , forKey: .id               )
 
  }
  */
  
}
