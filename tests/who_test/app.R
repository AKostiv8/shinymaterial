library(shiny)
library(shinymaterial)

# Wrap shinymaterial apps in material_page
ui <- material_page(
  title = "Extract App .CSV",
  primary_theme_color = "#03a9f4", 
  secondary_theme_color = "#ff9800",
  
  # Place side-nav in the beginning of the UI
  material_side_nav(
    fixed = TRUE,
    image_source = 'https://zamalieva.ru/wp-content/uploads/2020/02/world-health-organization-vector-logo.png',
    material_side_nav_tabs(
      side_nav_tabs = c(
        "Example Side-Nav Tab 1" = "example_side_nav_tab_1",
        "Example Side-Nav Tab 2" = "example_side_nav_tab_2"
      ),
      icons = c("list", "insert_chart")
    ), 
    
    tags$li(tags$div(class="divider")),
    tags$li(tags$a(class="subheader", "Quantitative Data Sheets")),
    material_side_nav_tabs_collapsible(
      collapsible_menu_arrow_name = "Sheets",
      side_nav_tabs = c(
        "T0" = "t0",
        "T1" = "t1",
        "T2" = "t2",
        "T3" = "t3",
        "T4" = "t4",
        "T5" = "t5",
        "T6" = "t6",
        "T8" = "t8",
        "T9" = "t9",
        "T10" = "t10",
        "T13" = "t13"
      )
    )
    
    
    
    
    
  ),
  # Define tabs
  material_tabs(
    tabs = c(
      "Quantitative Data" = "quantitative_tab",
      "Qualitative Data" = "qualitative_tab"
    )
  ),
  # Define tab content
  material_tab_content(
    tab_id = "quantitative_tab",
    tags$h1("First Tab Content"),
    tags$div(class = "row",
             tags$div(class = "col s12 m12",
                      material_collapsible(
                        material_collapsible_element(icon_title = 'account_box', 
                                                     title = 'Test 1', 
                                                     content = div(span('1234'), span('567'))
                                                     ),
                        material_collapsible_element(icon_title = 'account_box', 
                                                     title = 'Test 2', 
                                                     content = div(span('1234'), span('567'))
                        ),
                        material_collapsible_element(icon_title = 'account_box', 
                                                     title = 'Test 3', 
                                                     content = div(span('1234'), span('567'))
                        ),
                        material_collapsible_element(icon_title = 'account_box', 
                                                     title = 'Test 4', 
                                                     content = div(span('1234'), span('567'))
                        )
                      )  
             )
             )
  ),
  material_tab_content(
    tab_id = "qualitative_tab",
    tags$h1("Second Tab Content")
  )
)

server <- function(input, output, session) {
  
  
}
shinyApp(ui = ui, server = server)