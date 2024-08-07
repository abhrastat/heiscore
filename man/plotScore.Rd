% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotScore.R
\name{plotScore}
\alias{plotScore}
\title{Plot Healthy Eating Index (HEI) scores from NHANES data}
\usage{
plotScore(
  graph = NULL,
  method,
  years,
  component,
  demo = NULL,
  sex = c("Female", "Male"),
  race = c("Asian", "White", "Black", "Other", "Mexican American", "Other Hispanic"),
  age = c(2, 100),
  income = c("[0, 5000)", "[5000, 10000)", "[10000, 15000)", "[15000, 20000)",
    "[20000, 25000)", "[25000, 35000)", "[35000, 45000)", "[45000, 55000)",
    "[55000, 65000)", "[65000, 75000)", "75000+", "[75000, 100000)", ">100000", ">20000",
    "<20000", "Refused", "Don't know", "NA")
)
}
\arguments{
\item{graph}{A single character string with the desired graph type. Choose "histogram" when method = "simple". Choose "bar" when method = "pop ratio" or "mean ratio" and component is not "total score". Choose "bar" or "radar" when method = "pop ratio" or "mean ratio" and component = "total score"}

\item{method}{A single character string with the HEI scoring method to use. Choose from "simple", "pop ratio", or "mean ratio".}

\item{years}{A single character string representing the NHANES cycle to select, choose from: "0506", "0708", "0910", "1112", "1314", "1516", or "1718".}

\item{component}{A single character string with the HEI component to score and plot. Options include "total score", "total fruit", "whole fruits", "total vegetables", "greens and beans", "whole grains", "total dairy", "total protein", "seafood and plant proteins", "fatty acids", "refined grains", "sodium", "added sugars", and "saturated fat".}

\item{demo}{A single character string with the demographic grouping by which the data should be scored or NULL. If method = "simple", choose NULL as the demo. Otherwise, choose from "sex", "race", "age", or "income".}

\item{sex}{A vector of the sexes in the desired subpopulation. Provide a vector with the character strings "Female", "Male", or both.}

\item{race}{A vector of races/ethnicities in the desired subpopulation. Provide a vector including any combination of the following character strings: "Asian", "White", "Black", "Other", "Mexican American", and "Other Hispanic".}

\item{age}{A vector in the form c(min, max) with two integers specifying the desired age range to analyze. Both integers should either be ones (to represent the toddler age group including ages 12-23 months) or 2 and above.}

\item{income}{A vector of family income brackets in the desired subpopulation. Provide a vector including any combination of the following character strings: "[0, 5000)","[5000, 10000)","[10000, 15000)","[15000, 20000)","[20000, 25000)","[25000, 35000)", "[35000, 45000)","[45000, 55000)","[55000, 65000)","[65000, 75000)","[75000, 100000)", "75000+",">100000", ">20000","<20000","Refused","Don't know", "NA".}
}
\value{
A base R plot or a ggplot object with the specified plot
}
\description{
This function plots HEI component or total scores using the inputted scoring method and graph type. The user can subset the data to only include subjects in specific demographic groups
}
\examples{
# Plot the Total Dairy component score from the 2005-06 NHANES data using the
# "simple" method.

dairy_plot <- plotScore(graph = "histogram",
                        method = "simple",
                        years = "0506",
                        component = "total dairy")
dairy_plot

# Create a radar plot to display the total HEI score by race/ethnicity using
# the mean ratio method for subjects that are male, more than 50 years old,
# with a family income in the range [65000, 75000) for the 2015-16 NHANES
# cycle.
radar_example_plot <- plotScore(graph = "radar",
                    method = "mean ratio",
                    years = "1516",
                    component = "total score",
                    demo = "race",
                    sex = "Male",
                    age = c(50, 150),
                    income = "[65000, 75000)")
radar_example_plot

}
