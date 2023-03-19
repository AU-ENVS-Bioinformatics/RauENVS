# happy path

    Code
      remove_silva_prefix_from_taxtable(structure(c("k__Bacteria",
        " p__Proteobacteria", " c__Deltaproteobacteria", " o__Oligoflexales",
        " f__0319-6G20", " g__", " s__"), dim = c(1L, 7L), dimnames = list("sp1", c(
        "Kingdom", "Phylum", "Class", "Order", "Family", "Genus", "Species"))))
    Output
          Kingdom    Phylum           Class                 Order          
      sp1 "Bacteria" "Proteobacteria" "Deltaproteobacteria" "Oligoflexales"
          Family      Genus Species
      sp1 "0319-6G20" ""    ""     

