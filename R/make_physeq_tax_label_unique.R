#' Make unique taxonomic labels from a Phyloseq taxonomyTable
#'
#' This function will extract the available deepest taxonomic label
#' from a phyloseq taxonomyTable. You still need to assign that
#' (see example below).
#'
#' @param taxtable A phyloseq-class instance
#'
#' @return A character vector with unique taxonomic labels.
#' @export
#'
#' @examples
#'\dontrun{
#' taxtable <- structure(
#'   c("Bacteria", "Proteobacteria", "Deltaproteobacteria","", "", "", ""),
#'   dim = c(1L, 7L),
#'   dimnames = list(
#'   "sp1", c("Kingdom", "Phylum", "Class","Order",
#'    "Family", "Genus", "Species")
#'    ))
#' make_physeq_tax_label_unique(taxtable)
#' }
make_physeq_tax_label_unique <- function(taxtable){
  taxtable |>
    as.data.frame() |>
    dplyr::mutate(
      dplyr::across(dplyr::everything(),
        ~dplyr::na_if(., "")
    ))|>
    purrr::transpose() |>
    purrr::map_chr(~as.character(.x) |> stats::na.omit() |> tail(1)) |>
    make.unique()
}
