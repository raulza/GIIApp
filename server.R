source("./GIIdata.R")

shinyServer(
  function(input, output) {
      output$choose_country <- renderUI({
      selectInput("ctry", "", allCtrys, selectize=FALSE, selected="Select")
      })
      
      output$innov_table <- renderTable({
          selCtry <- innov[innov$Country == input$ctry, c(1,4,5,2,3)]
          selCtry$GDPperCap <- format(round(selCtry$GDPperCap,2), big.mark=",", justify=c("right")) 
          selCtry$Population <- format(round(selCtry$Population*1000,0), big.mark=",", justify=c("right"))
          selCtry
      })

      output$top_ten <- renderTable({
          topCtry <- head(innov,input$topN)
          topCtry <- topCtry[ ,c(1,4,5,2,3)]
          topCtry$GDPperCap <- format(round(topCtry$GDPperCap,2), big.mark=",", justify=c("right")) 
          topCtry$Population <- format(round(topCtry$Population*1000,0), big.mark=",", justify=c("right"))
          topCtry
      })
      
  }
)

