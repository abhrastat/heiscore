% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/app.R
\name{runShinyApp}
\alias{runShinyApp}
\title{Launch Shiny app to visualize Healthy Eating Index (HEI) scores}
\usage{
runShinyApp()
}
\value{
No return value, launches interactive Shiny app
}
\description{
This function launches a Shiny application that allows users to visualize HEI scores calculated from National Health and Nutrition Examination Survey (NHANES) 24-hour dietary recall data.
}
\section{Shiny App Tab Information}{

\strong{Tab 1 - Variable Information:}
The Variable Information tab provides additional
information on dietary components and constituents.

\strong{Tab 2 - Demographics:}
The Demographics tab displays a bar chart that
illustrates the distribution of the NHANES
sample across categories including sex, race,
age, and income. The chart is weighted to
ensure the distribution is aligned with the
demographics of the entire United States.

Side Panel Options
\itemize{
\item Select Dataset: Choose the years that the data is from
\item Choose a Demographic: Pick a demographic category to view the distribution of
\item Select Sex/Race/Age Bracket/Income Bracket:Use the checkboxes to only use data from the desired demographic subgroup
}

\strong{Tab 3 - Recalls:} The
Recalls tab displays a histogram of
the raw consumption of the selected
food group, weighted to make the
distribution representative of the
United States.

Side Panel Options
\itemize{
\item Select Dataset: Choose the years that the data is from
\item Select Component Type: Choose to view dietary components or constituents (explained in the Variable Information tab)
\item Select Variable: Pick a specific dietary component or constituent to view the distribution of
\item Select Sex/Race/Age Bracket/Income Bracket: Use the checkboxes to only use data from the desired demographic subgroup
}

Below Plot Options
\itemize{
\item Select Plot Type: Choose the type of graph used to visualize the data
\item Options:
\itemize{
\item Adjusted per 1000 Calories: When the checkbox is selected, the histogram will show the distribution of the amount of the chosen dietary component consumed per 1000 kcal in each recall
\item Plot Average:  When the checkbox is selected, the histogram will show the distribution of the average of participants’ two recalls, if the individual participated in both recalls. Otherwise, the participant’s single recall will be used instead.
}
\item X-Axis Options:
\itemize{
\item Keep X-Axis Constant for Recall Component: This option makes the x-axis bounds the same for the selected recall component across all years and demographic subsets.
\item Make X-Axis Proportional to Maximum: This option sets the x-axis bounds from 0 to 20. The maximum recall value of the chosen food group within the selected year and demographic subgroup is set as 20, and all other recall values are assigned proportionally to the maximum value on a scale from 0 to 20.
\item Raw Values: No adjustments are made to the x-axis bounds
}
\item Select Radar Plot Demographic: When the Plot Type is ‘Radar’, choose the demographic category by which the recalls will be categorized
}

\strong{Tab 4 - Scoring:} The Scoring tab visualizes HEI scores from NHANES data. The graphs are weighted to make the distributions representative of the United States.

Side Panel Options
\itemize{
\item Choose a Scoring Method: Select which HEI scoring method to implement.
\item Select Dataset: Choose the years that the data is from
\item Compare with a Second Dataset: Choose the years that the data for the optional second plot is from
\item Select Variable: Pick to view the total HEI score or one of the 13 individual component scores.
\item Select Age Group: Choose to include data either from Toddlers from 12-23 months old or older individuals since these two age groups have different HEI scoring standards.
\item Choose a Demographic: When the Scoring Method is ‘Mean Ratio’ or ‘Population Ratio’, choose the demographic category by which the scores will be categorized
\item Select Sex/Race/Age Bracket/Income Bracket: Use the checkboxes to only use data from the desired demographic subgroup
}

Below Plot Options
\itemize{
\item Select a scoring display option: Choose the type of graph used to visualize the data
}
}

\examples{

runShinyApp()

}
