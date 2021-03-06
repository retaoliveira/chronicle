% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/densities.R
\name{make_density}
\alias{make_density}
\title{Create a density plot from a data frame through ggplotly}
\usage{
make_density(
  dt,
  value,
  groups = NULL,
  faceted = TRUE,
  scales = "fixed",
  ggtheme = "minimal",
  x_axis_label = NULL,
  plot_palette = NULL,
  plot_palette_generator = "plasma"
)
}
\arguments{
\item{dt}{data.frame containing the data to plot.}

\item{value}{Name of the column to use as values on the y axis of the plot.}

\item{groups}{Name of the column containing the different groups.}

\item{faceted}{If TRUE (default), each group will be plotted separately.}

\item{scales}{From ggplot2::facet_wrap: Should scales be 'fixed', 'free', or free in one dimension ('free_x', 'free_y'). Default is 'fixed'.}

\item{ggtheme}{ggplot2 theme function to apply. Default is ggplot2::theme_minimal.}

\item{x_axis_label}{Label for the x axis.}

\item{plot_palette}{Character vector of hex codes specifying the colors to use on the plot.}

\item{plot_palette_generator}{Palette from the viridis package used in case plot_palette is unspecified or insufficient for the number of colors required.}
}
\value{
A plotly-ized version of a ggplot density plot.
}
\description{
Create a density plot from a data frame through ggplotly
}
\examples{
make_density(dt = iris,
             value = 'Sepal.Length',
             groups = 'Species')
make_density(dt = iris,
             value = 'Sepal.Length',
             groups = 'Species',
             faceted = FALSE)
}
