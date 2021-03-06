% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tables.R
\name{add_table}
\alias{add_table}
\title{Add a table to a chronicle report}
\usage{
add_table(
  report = new_report(),
  table,
  table_title = NULL,
  title_level = 2,
  html_table_type = c("DT", "kable"),
  table_params = NULL
)
}
\arguments{
\item{report}{character containing the text of an Rmarkdown report header (and possibly more chunks). Easily create one with chronicle::new_report()}

\item{table}{data.frame to print on the report.}

\item{table_title}{title of the table. Default is no title.}

\item{title_level}{Level of the section title of this plot (ie, number of # on Rmarkdown syntax.)}

\item{html_table_type}{Either print a knitr::kable table or a DT htmlwidget. kable tables look good with prettydoc (which is TRUE by default on new_report()), DT (https://rstudio.github.io/DT/) are interactive table widgets.}

\item{table_params}{Single character string with any additional parameters to be passed to either knitr::kable() or DT::datatable(), depending on html_table_type}
}
\value{
An R Markdown file as a character string, now containing a chunk for the specified table.
}
\description{
Add a table to a chronicle report
}
\examples{
html_report <- add_table(report = new_report(),
                         table = iris,
                         table_title = 'Iris measures',
                         html_table_type = 'kable')
cat(html_report)
}
