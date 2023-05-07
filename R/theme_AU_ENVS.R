#' Set default AU-ENVS R theme
#'
#' This function will override some layout options that will
#' affect how the graphics look. It has side effects.
#'
#' @param locale  A character vector of one indicating the desired locale.
#' Most of the time, the default "English_Denmark" is ok, although
#' sometimes you may want to use the "Denmark_English" option for
#' Danish months,  names, etc...
#'
#' @export
#'
#' @examples
#' data <- data.frame(x = rnorm(10), y = rnorm(10), mode = rep(c("A", "B"), 5))
#' ggplot2::ggplot(data, ggplot2::aes(x, y, color = mode))+
#'   ggplot2::geom_point()
#' set_theme_AU_ENVS()
#' ggplot2::ggplot(data, ggplot2::aes(x, y, color = mode))+
#'   ggplot2::geom_point()
set_theme_AU_ENVS <- function(locale = "English_Denmark"){

  options(digits = 3)        # number of digits printed by R default (vectors, data.frames, lists)
  options(pillar.sigfig = 3) # number of digits printed by tibbles default.

  text_base_size   <- 16   # in pt
  fig.witdh        <- 180  # in mm
  fig.height       <- 125  # in mm

  # Set all text in plots to same size
  ggplot2::theme_set(
    cowplot::theme_cowplot(
      font_size = text_base_size, rel_small = 1,
      rel_tiny = 1, rel_large = 1
    )
  )

  # Setting output sizes for plots in knitted html
  knitr::opts_chunk$set(fig.width = fig.witdh/25.4)
  knitr::opts_chunk$set(fig.height = fig.height/25.4)

  # Setting text size inside plots (geom_text, geom_label etc.)
  ggplot_text_size <- text_base_size / ggplot2::.pt
  # Set locale if you want danish month names etc.
  Sys.setlocale(locale = locale) # For English axes on plot
  options(ggplot2.continuous.colour = ggplot2::scale_colour_viridis_c)
  options(ggplot2.discrete.fill     = list(get_wants_hue(7)))
  options(ggplot2.discrete.colour   = list(get_wants_hue(7)))

}
