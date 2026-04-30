\name{AxyCalcs}
\alias{AxyCalcs}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Tri-axial Accelerometry Calculations - static, dynamic, ODBA
}
\description{
From raw tri-axial accelerometry (Gs): 
- Calculates Static acceleration for each axis as the centerd moving average of the specified window 
- Calculates Dynamic acceleration for each axis as the (raw value) - (static accerleration)
- Calculates Overal Dynamic Body Acceleration (ODBA) as the absolute sum of all three Dynamic acceleration axes

}
\usage{
AxyCalcs(data, accX, accY, accZ, Hz, window_S)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{
Dataframe of raw triaxial accelerometry, may have other data as well
}
\item{accX}{
Name of dataframe column for x-axis of accelerometry
}
\item{accY}{
Name of dataframe column for y-axis of accelerometry
}
\item{accZ}{
Name of dataframe column for z-axis of accelerometry
}
\item{HZ}{
Accelerometry data frequency (# of data points/second)
}
\item{window_S}{
window (in seconds) of centered moving average for static accelerometry calculation. 
}
}

\value{
The returned dataframe matches the input data frame with the added columns for static acceleration on each axis, dynamic acceleration on each axis, and ODBA
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Abigail Schiffmiller}



## The function is currently defined as
AxyCalcs <- function(data, accX, accY, accZ, Hz, window_S) {
                     df <- data
                     accX <- data |>  pull({{accX}})
                     accY <- data |>  pull({{accY}})
                     accZ <- data |>  pull({{accZ}})
                      Hz <- Hz
                      n <- window_S * Hz
                      lll <- length(accX)
                       
                # prepare objects to fill     
                           S_x <- rep(NA,lll)
                           S_y <- rep(NA,lll)
                           S_z <- rep(NA,lll)
                        
                           D_x <- rep(NA,lll)
                           D_y <- rep(NA,lll)
                           D_z <- rep(NA,lll)
                        
                           ODBA <- rep(NA,lll)
                           
                  for(i in (Hz+1):(lll-Hz)){ # calculating static, dynamic and ODBA for each row
            ## Static acceleration #### 
               # average acceleration in each axis calculated over a moving window (2s)
                  S_x[i] <- sum(accX[(i-(n/2)):(i+(n/2))]) / n   #   where n = 2*Hz (for 2s window, 1 sec before and 1 sec after)
                  S_y[i] <- sum(accY[(i-(n/2)):(i+(n/2))]) / n   #   where n = 2*Hz (for 2s window, 1 sec before and 1 sec after)
                  S_z[i] <- sum(accZ[(i-(n/2)):(i+(n/2))]) / n   #   where n = 2*Hz (for 2s window, 1 sec before and 1 sec after)
                  
            ## Dynamic acceleration ####
               # residual acceleration in each axis
                  D_x[i] <- S_x[i] - accX[i]
                  D_y[i] <- S_y[i] - accY[i]
                  D_z[i] <- S_z[i] - accZ[i]
                  
            ## ODBA ####
               # Dynamic acceleration summed over all three axes
                  ODBA[i] = abs(D_x[i])+abs(D_y[i])+abs(D_z[i])
                 }
               
                     df$S_x <- S_x
                     df$S_y <- S_y
                     df$S_z <- S_z
                     
                     df$D_x <- D_x
                     df$D_y <- D_y
                     df$D_z <- D_z
                     
                     df$ODBA <- ODBA
            # return:           
                     df
                }

