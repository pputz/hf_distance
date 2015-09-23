hyperfocDist <- function(f, a, cf) {
  HF <- round(((f^2/(a*0.03/cf) + f)/1000), 2)
  paste("The Hyperfocal Distance HF = ", HF, " m")
}

depthOfField <- function(f, a, cf) {
  DoF <- round(((f^2/(a*0.03/cf) + f)/2000), 2)
  paste("The Depth of Field DoF = ", DoF, " m to infinity")
}

shinyServer(
  function(input, output) {
    output$hfd <- renderText({hyperfocDist(input$f, input$a, input$cf)})
    output$dof <- renderText({depthOfField(input$f, input$a, input$cf)})
  }
)