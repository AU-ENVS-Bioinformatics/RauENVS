# happy path

    Code
      make_physeq_tax_label_unique(structure(c("Bacteria", "Bacteria", "Bacteria",
        "Bacteria", "Bacteria", "Proteobacteria", "Actinobacteria", "Actinobacteria",
        "Ca.Parcubacteria", "Proteobacteria", "Deltaproteobacteria",
        "Actinobacteria(class)", "Acidimicrobiia", "", "Betaproteobacteria",
        "Oligoflexales", "Kineosporiales", "Acidimicrobiales", "", "Nitrosomonadales",
        "0319-6G20", "Kineosporiaceae", "OM1clade", "", "Nitrosomonadaceae", "",
        "Kineosporia", "", "", "", "", "", "", "", ""), dim = c(5L, 7L), dimnames = list(
        c("sp1", "sp2", "sp3", "sp4", "sp5"), c("Kingdom", "Phylum", "Class", "Order",
          "Family", "Genus", "Species"))))
    Output
      [1] "0319-6G20"         "Kineosporia"       "OM1clade"         
      [4] "Ca.Parcubacteria"  "Nitrosomonadaceae"

