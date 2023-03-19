#' Generate a palette using I Want Hue
#'
#' This function allows you to generate a palette of colors using the web
#' https://medialab.github.io/iwanthue/
#'
#'
#' @param n A numeric vector of one with the desired number of colors
#' @param seed A numeric vector of one with the desired seed (palettes are generated randomly)
#' @param palette A character vector of one with name of the palette you want to use.
#' To see all available palettes run `names(rwantshue::hcl_presets)`.
#'
#' @return A character vector with the hex codes.
#' @export
#'
#' @examples
#' get_wants_hue(n = 5)
#' get_wants_hue(n = 5, seed = 2)
#' get_wants_hue(n = 5, seed = 2, palette = "fluo")
get_wants_hue <- function(n, seed = 1, palette = "colorblind_friendly"){
  if (n <= 0) {
    return(c())
  }
  scheme <- rwantshue::iwanthue(seed = seed, force_init = TRUE)
  scheme$hex(n,color_space = rwantshue::hcl_presets[[palette]])
}
