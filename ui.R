shinyUI(fluidPage(
  
  h1('Hyperfocal Distance Calculator'),

  br(),
  
  fluidRow(
    column(8, offset = 0,
      p("In photography, the hyperfocal distance (HF) is the closest distance
        at which a lens can be focused while keeping objects at infinity 
        acceptably sharp."),
      p("When the lens is focused at this distance, 
        all objects at distances from half of the hyperfocal distance 
        out to infinity will be acceptably sharp. This distance is called 
        depth of field (DoF). (See ",
        a(href="https://en.wikipedia.org/wiki/Hyperfocal_distance","Wikipedia"),
        ")"
        )
    )
  ),
  
  br(),
  
  fluidRow(
    
    column(3,
      wellPanel(
        h4("Lens, Camera Parameters"),
        numericInput('f', 'Focal Length [mm]', 35, min = 5, max = 1000, step = 5),
        numericInput('a', 'Aperture [f-stop]', 4, min = 0.9, max = 64),
        numericInput('cf', 'Crop Factor', 1.5, min = 0.1, max = 5, step = 0.1)
        )
      ),
    
    column(9,
      mainPanel(
        img(src = "hf.jpg", height = "100", width = "500"),
        h4(textOutput("hfd")),
        h4(textOutput("dof"))
      )
    )),
  
  br(),
  
  fluidRow(
    column(8, offset = 0,
           h4("Instructions for Lens, Camera Parameters"),
           p("The",
             strong("focal length"),
             "is usually printed on any lens, either as a 
             single value (eg. 35 mm) or as a range (eg. 70-200 mm) for zoom 
             lenses."),
           p("The",
             strong("aperture"),
             "is the chosen f-stop for a given exposure."),
           p("The",
             strong("crop factor"),
             "is a camera parameter. It is a measure of 
             the size of the film or th image sensor in relation to a 35 mm film
             camera. For modern DSLR a full frame camera has a crop factor of 1,
             a APS-C camera 1.5 or 1.6. To find the crop factor for your camera
             see ",
             a(href="https://en.wikipedia.org/wiki/Crop_factor","Wikipedia"),
             "."
             )
           )
    )
  ))