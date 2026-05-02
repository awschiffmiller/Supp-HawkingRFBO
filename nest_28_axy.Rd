\name{nest_28_axy}
\alias{nest_28_axy}
\docType{data}
\title{
Nest(bird)28 Accelerometry 
}
\description{
data from Technosmart Axy5 XS deployed on Bird#28 in November 2022. 
Accelerometry recorded at 25 Hz with a maximum threashold of 8 Gs.
}
\usage{data("nest_28_axy")}
\format{
  A data frame (as downlowded from Technosmart tag/software) with 4649876 observations on the following 2 variables.
  \describe{
   \item{\code{TagID}}{character: unique tag ID #}
   \item{\code{Date}}{character: set at time of tag programming}
   \item{\code{Time}}{character: UTC, set at time of tag programming}
   \item{\code{accX}}{double: X axis accelerometry reading}
   \item{\code{accY}}{double: Y axis accelerometry reading}
   \item{\code{accZ}}{double: Z axis accelerometry reading}
   \item{\code{magX}}{double: X axis magnetometer reading} % magnetometer not calibrated at deployment
   \item{\code{magY}}{double: X axis magnetometer reading} % magnetometer not calibrated at deployment
   \item{\code{magZ}}{character: X axis magnetometer reading} % magnetometer not calibrated at deployment
   \item{\code{Temp.}}{character: temperature (C) reading}
   \item{\code{X..C.}}{character COLUMN_DESCRIPTION}
   \item{\code{Battery}}{character: battery level}
   \item{\code{Voltage}}{logical}
   \item{\code{X.V.}}{logical}
   \item{\code{Metadata}}{logical}
   \item{\code{timestamp}}{double: combined timestamp from 'Date' and 'Time'  y-m-d H:M:S } 
}
}
\details{
Accelerometer attached to central back contour feathers over center of mass.
Bird also carried a camera (Little Leonardo DVL400M) attached forward of the accelerometer and a Catlog Gen2 GPS tracker attached to the central three tail feathers.
Technosmart .CSV edited in R to add 'timestamp' and convert to .Rdata
}
\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
}

\keyword{datasets}
