shinyUI(pageWithSidebar(
  headerPanel("Global Innovation Index 2014"),  
  
  sidebarPanel(
    h4("Select Country:"),
    br(),
    uiOutput('choose_country'),
    submitButton('Show Ranking'),
    br(),
    hr(size="10"),
    h4("Input number:"),
    numericInput("topN", "", 0, min = 0, max = 143, step = 1),
    submitButton("Show Top N Countries"),
    br(),
    br(),
    p(h5("Read the App documentation here:",a("GIIApp",href="GIIDoc.html")))
  ),
  
  mainPanel(
    h3("Country Ranking Results"),
    br(),
    tableOutput('innov_table'),
    br(),
    br(),
    h3("Top Innovative Countries"),
    br(),
    tableOutput('top_ten'),
    br()
  )
))

