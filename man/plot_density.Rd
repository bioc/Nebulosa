% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/methods.R
\name{plot_density}
\alias{plot_density}
\alias{plot_density,Seurat-method}
\alias{plot_density,SingleCellExperiment-method}
\title{Plot gene-weighted 2D kernel density}
\usage{
plot_density(
  object,
  features,
  slot = NULL,
  joint = FALSE,
  reduction = NULL,
  dims = c(1, 2),
  method = c("ks", "wkde"),
  adjust = 1,
  size = 1,
  shape = 16,
  combine = TRUE,
  pal = "viridis",
  raster = TRUE,
  ...
)

\S4method{plot_density}{Seurat}(
  object,
  features,
  slot = NULL,
  joint = FALSE,
  reduction = NULL,
  dims = c(1, 2),
  method = c("ks", "wkde"),
  adjust = 1,
  size = 1,
  shape = 16,
  combine = TRUE,
  pal = "viridis",
  raster = TRUE,
  ...
)

\S4method{plot_density}{SingleCellExperiment}(
  object,
  features,
  slot = NULL,
  joint = FALSE,
  reduction = NULL,
  dims = c(1, 2),
  method = c("ks", "wkde"),
  adjust = 1,
  size = 1,
  shape = 16,
  combine = TRUE,
  pal = "viridis",
  raster = TRUE,
  ...
)
}
\arguments{
\item{object}{Seurat or SingleCellExperiment object}

\item{features}{Features (e.g. genes) to visualize}

\item{slot}{Type of data: \code{counts} or\code{data} for Seurat objects and
 \code{counts},
\code{logcounts}, or \code{normcounts} for SingleCellExperiment objects}

\item{joint}{Return joint density plot? By default \code{FALSE}}

\item{reduction}{Name of the reduction to visualize. If not provided, last
computed reduction is visualized}

\item{dims}{Vector of length 2 specifying the dimensions to be plotted. By
default, the first two dimensions are considered.}

\item{method}{Kernel density estimation method:
\itemize{
\item \code{ks}: Computes density using the \code{kde} function from the
 \code{ks} package.
\item \code{wkde}: Computes density using a modified version of the
\code{kde2d} function from the \code{MASS}
package to allow weights. Bandwidth selection from the \code{ks} package
 is used instead.
}}

\item{adjust}{Numeric value to adjust to bandwidth. Default: 1. Not available
for \code{ks} method}

\item{size}{Size of the geom to be plotted (e.g. point size)}

\item{shape}{Shape of the geom to be plotted}

\item{combine}{Create a single plot? If \code{FALSE}, a list with ggplot
objects is returned}

\item{pal}{String specifying the viridis color palette to use.}

\item{raster}{Rasterise plot}

\item{...}{Further scale arguments passed to scale_color_viridis_c
Options:
\itemize{
\item \code{viridis}
\item \code{magma}
\item \code{cividis}
\item \code{inferno}
\item \code{plasma}
}}
}
\value{
A scatterplot from a given reduction showing the gene-weighted
 density
}
\description{
Plot gene-weighted 2D kernel density
}
\section{Methods (by class)}{
\itemize{
\item \code{plot_density(Seurat)}: Plot gene-weighted 2D kernel density

\item \code{plot_density(SingleCellExperiment)}: Plot gene-weighted 2D kernel density

}}
\examples{

data <- SeuratObject::pbmc_small
plot_density(data, "CD3E")
}
\author{
Jose Alquicira-Hernandez
}
