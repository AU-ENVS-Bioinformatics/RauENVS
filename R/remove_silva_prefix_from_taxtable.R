#' Removes Silva prefix from a Phyloseq taxonomyTable
#'
#' This function will remove the silva prefix from a Phyloseq taxonomy table.
#'  You still need to assign that
#'
#' @param taxtable A taxonomy table from phyloseq (obtained using `tax_table()`)
#'
#' @return A character vector with unique taxonomic labels.
#' @export
#'
#' @examples
#' taxtable <- structure(c("k__Bacteria", " p__Proteobacteria",
#' "c__Deltaproteobacteria", " o__Oligoflexales", " f__0319-6G20",
#' "g__", " s__"), dim = c(1L, 7L),
#' dimnames = list("sp1", c("Kingdom",
#' "Phylum", "Class", "Order", "Family", "Genus", "Species")))
#' remove_silva_prefix_from_taxtable(taxtable)
#'
remove_silva_prefix_from_taxtable <- function(taxtable){
  silva_prefix <- c(
    "k__", "p__", "c__", "o__", "f__", "g__", "s__"
  )
  x <- silva_prefix |>
    paste(collapse = "|") |>
    gsub("", taxtable)
  ## Trim white spaces
  gsub('^\\s+', '',x)
}
