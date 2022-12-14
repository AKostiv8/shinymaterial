#' Create a card that will contain UI content
#'
#' UI content can be placed in cards to organize items on a page.
#' @param title String. The title of the card
#' @param ... The UI elements to place in the card
#' @param depth Integer. The amount of depth of the card. The value should be between 0 and 5. Leave empty for the default depth.
#' @param color String. The color of the card background. Leave empty for the default color. Visit \url{https://materializecss.com/color.html} for a list of available colors.
#' @param divider logical. Should there be a divider element between card title and card content?
#' @examples
#' material_card(
#'   title = "Example Card",
#'   depth = 5,
#'   shiny::tags$h5("Card Content")
#' )

material_collapsible_element <- function(icon_title, title, content) {
  tags_ <- tagList(
      tags$li(
        tags$div(class="collapsible-header",
                 tags$i(class="material-icons", icon_title),
            title
        ),
        tags$div(class="collapsible-body",
            content
        )
      )
  )
  
  return(tags_)
}

material_collapsible <- function(...) {
  
  create_material_object(
    js_file =
      "shiny-material-collapsible.js",
    material_tag_list =
      withTags(
        ul(class = "collapsible popout",
          ...
        )
      )
  )
  

  
  
  
}
