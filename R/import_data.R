#' Import TPS Race and Identity-based Data
#'
#' @return selected data in tidy format
#'
#' @export
#'
#' @import rio
#' @import tibble
#' @import janitor
#'
#' @example
#'
#' \dontrun{
#' df <- data()
#' }

import_data <- function() {

  answer <-
    menu(
      title = "Select a dataset to import:",
      choices =
        c("Arrests & Strip Searches",
          "Use of Force: Call Sources by Month",
          "Use of Force: Time of Day Trends",
          "Use of Force: Location of Occurrences",
          "Use of Force: Call for Service Types",
          "Use of Force: Occurrence Category",
          "Use of Force: Gender Composition",
          "Use of Force Types and Perceived Weapons"
        )
    )

  # Arrests & Strip Searches
  if(answer == 1){

    df <- rio::import("https://opendata.arcgis.com/api/v3/datasets/899f1b3b047c47659a9843e9c5858269_0/downloads/data?format=csv&spatialRefId=4326&where=1%3D1", format = ",")

  }

  # Use of Force: Call Sources by Month
  if(answer == 2){

    df <- rio::import("https://opendata.arcgis.com/api/v3/datasets/98d88b18c0364c8d86e6a7c690037b85_0/downloads/data?format=csv&spatialRefId=4326&where=1%3D1", format = ",")

  }

  # Use of Force: Time of Day Trends
  if(answer == 3){

    df <- rio::import("https://opendata.arcgis.com/api/v3/datasets/b2bd6427e19a4706a4727338824a82b6_0/downloads/data?format=csv&spatialRefId=4326&where=1%3D1", format = ",")

  }

  # Use of Force: Location of Occurrences
  if(answer == 4){

    df <- rio::import("https://opendata.arcgis.com/api/v3/datasets/0e7f95cb45704c8e8c9a05973422211c_0/downloads/data?format=csv&spatialRefId=4326&where=1%3D1", format = ",")

  }
  # Use of Force: Call for Service Types
  if(answer == 5){

    df <- rio::import("https://opendata.arcgis.com/api/v3/datasets/04633ebdaba941efaa82f2cdaaa00bb8_0/downloads/data?format=csv&spatialRefId=4326&where=1%3D1", format = ",")

  }

  # Use of Force: Occurrence Category
  if(answer == 6){

    df <- rio::import("https://opendata.arcgis.com/api/v3/datasets/a9b6bef1d34b44eea814e1869fdcda62_0/downloads/data?format=csv&spatialRefId=4326&where=1%3D1", format = ",")

  }

  # Use of Force: Gender Composition
  if(answer == 7){

    df <- rio::import("https://opendata.arcgis.com/api/v3/datasets/de9284945c3e479e938c4b77586535b1_0/downloads/data?format=csv&spatialRefId=4326&where=1%3D1", format = ",")

  }

  # Use of Force Types and Perceived Weapons
  if(answer == 8){

    df <- rio::import("https://opendata.arcgis.com/api/v3/datasets/9388798a44cd4ee5bc175669d8b6fb13_0/downloads/data?format=csv&spatialRefId=4326&where=1%3D1", format = ",")

  }

  # transform to tidy format
  df <- tibble::as_tibble(df)

  # clean variable names
  df <- janitor::clean_names(df)

  return(df)

}



