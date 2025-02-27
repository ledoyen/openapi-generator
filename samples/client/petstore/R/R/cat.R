# OpenAPI Petstore
#
# This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.
#
# The version of the OpenAPI document: 1.0.0
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title Cat
#'
#' @description Cat Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field className  character 
#'
#' @field color  character [optional]
#'
#' @field declawed  character [optional]
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Cat <- R6::R6Class(
  'Cat',
  inherit = Animal,
  public = list(
    `className` = NULL,
    `color` = NULL,
    `declawed` = NULL,
    initialize = function(
        `className`, `color`='red', `declawed`=NULL, ...
    ) {
      local.optional.var <- list(...)
      if (!missing(`className`)) {
        stopifnot(is.character(`className`), length(`className`) == 1)
        self$`className` <- `className`
      }
      if (!is.null(`color`)) {
        stopifnot(is.character(`color`), length(`color`) == 1)
        self$`color` <- `color`
      }
      if (!is.null(`declawed`)) {
        stopifnot(is.logical(`declawed`), length(`declawed`) == 1)
        self$`declawed` <- `declawed`
      }
    },
    toJSON = function() {
      CatObject <- list()
      if (!is.null(self$`className`)) {
        CatObject[['className']] <-
          self$`className`
      }
      if (!is.null(self$`color`)) {
        CatObject[['color']] <-
          self$`color`
      }
      if (!is.null(self$`declawed`)) {
        CatObject[['declawed']] <-
          self$`declawed`
      }

      CatObject
    },
    fromJSON = function(CatJson) {
      CatObject <- jsonlite::fromJSON(CatJson)
      if (!is.null(CatObject$`className`)) {
        self$`className` <- CatObject$`className`
      }
      if (!is.null(CatObject$`color`)) {
        self$`color` <- CatObject$`color`
      }
      if (!is.null(CatObject$`declawed`)) {
        self$`declawed` <- CatObject$`declawed`
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`className`)) {
        sprintf(
        '"className":
          "%s"
                ',
        self$`className`
        )},
        if (!is.null(self$`color`)) {
        sprintf(
        '"color":
          "%s"
                ',
        self$`color`
        )},
        if (!is.null(self$`declawed`)) {
        sprintf(
        '"declawed":
          %s
                ',
        tolower(self$`declawed`)
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(CatJson) {
      CatObject <- jsonlite::fromJSON(CatJson)
      self$`className` <- CatObject$`className`
      self$`color` <- CatObject$`color`
      self$`declawed` <- CatObject$`declawed`
      self
    }
  )
)
