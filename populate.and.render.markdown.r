# Function to specificy the characteristics of the target job oportunity. User will populate
# lines that specify position title, industry type, company name, and company location
# and these terms will be populated in the three output .rmd files that will be rendered 
# in the code. This function, and this project, is a toy project that was used for practicing how different
# types of documents can be rendered.

# The three files created will be titled based on the nmame in the paste function, line 23 and the job characteristics.

# Written by R.Leaf
# Maintained by R.Leaf, robert.t.leaf@gmail.com
# University of Southern Mississippi, Gulf Coast Research Lab
# May 28, 2019

library(rmarkdown)  # for render

company.name <- "Test Company LLC"
position.title <- "Research Scientist - Machine Learning"
industry.type <- "Corporate Technology"
company.loc <- "Charlotte, NC, 12345"

render(
  input = "cover.letter.rmd",  # path to the template
  output_file = paste0("RT Leaf","_","Letter_", position.title,"_", company.name,".doc"),  # name the output
  output_dir = "output"  # folder in which to put the output file
)

render(
  input = "two.page.cv.rmd",  # path to the template
  output_file = paste0("RT Leaf","_","CV_", position.title,"_", company.name,".html"),  # name the output
  output_dir = "output"  # folder in which to put the output file
)

render(
  input = "cv.simple.rmd",  # path to the template
  output_file = paste0("RT Leaf","_","simple_CV_", position.title,"_", company.name,".doc"),  # name the output
  output_dir = "output"  # folder in which to put the output file
)
