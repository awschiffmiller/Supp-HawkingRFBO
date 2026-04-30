\name{fullPCAdf}
\alias{fullPCAdf}
\docType{data}
\title{
RFBO Prey Capture Attempts
}
\description{
Prey capture attempts of RFBO (Sula sula) as recorded in animal borne video.
Data as recorded by hand while watching video footage.
}
\usage{data("fullPCAdf")}
\format{
  A data frame with 483 observations on the following 13 variables.
  \describe{
    \item{\code{ID}}{an integer vector - Bird/nest ID number}
    \item{\code{MOVI}}{an integer vector - video number}
    \item{\code{t_unobscured}}{a numeric vector- number of (decimal) minutes the video footage was unobscured for, NA except firs row of each ID/MOVI combination}
    \item{\code{PCA}}{Factor w/ 4 levels: "Plunge Dive", "Hawking", "Other", "Aborted" - Prey Capture Attempt type}
    \item{\code{pcaSub}}{Factor w/ 7 levels: "Type 1","Type 2","plunge Dive","Hawking","Shallow angle","Dip-dive","Other" - PCA subtype}
    \item{\code{success}}{Factor w/ 4 levels: "successful","unknown", "failed", "aborted" }
    \item{\code{PCA_time}}{a character vector - m:s in video of PCA}
    \item{\code{otherPCA}}{a character vector - decription of 'other' PCA}
    \item{\code{OB_type_time}}{a character vector - 'type@m:s' of a PCA by another bird in frame}
    \item{\code{OB_success}}{a character vector - success code of a PCA by another bird in frame (s,u,f,a)}
    \item{\code{NOTES}}{a character vector - with aditional notes about PCA}
    \item{\code{year}}{Factor w/ 2 levels: "2022","2024" - which year the bird was tagged}
    \item{\code{trip}}{Factor w/ 4 levels: "PalmyraMay22", "PalmyraNov22", "PalmyraNov24", "SeychellesJan24" - which trip the bird was tagged on}
  }
}

\examples{
str(fullPCAdf)
}
\keyword{datasets} 
