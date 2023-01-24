setwd("/home/gfuentes/projects/insulinomas/NFRs/analysis/")
files <- list.files(pattern = "ComparisonNFRsvsNORs_K27ac.Rmd")
files2 <- list.files(pattern = "ComparisonNFRsvsNORs.Rmd")
files <- c(files, files2)

for (f in files){
  rmarkdown::render(f)
}

setwd("/home/gfuentes/projects/insulinomas/NFRs/code/")
system(".  ../code/git.sh")


wflow_publish(c("analysis/index.Rmd", "analysis/about.Rmd",
                "analysis/license.Rmd",
                "analysis/ComparisonNFRsvsNORs_K27ac.Rmd",
                "analysis/ComparisonNFRsvsNORs.Rmd",
                "analysis/Overlapping_analysis_NFRs.Rmd",
                "analysis/Descriptives_NFRs_all-INS2.Rmd",
                "analysis/Descriptives_NFRs.Rmd"),
              "Publish the files from the comparisons overlappings, and descriptives")

setwd("/home/gfuentes/projects/insulinomas/NFRs/code/")
system(".  ../code/git.sh")
