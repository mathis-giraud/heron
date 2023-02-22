#' @noRd
demi_perimetre <- function(a, b, c){
  p = (a+b+c)/2
  return(p)
}

#' heron
#'
#' Quel est le diamètre d'un triangle?
#'
#' @param a Un coté du triangle
#' @param b Un second côté du triangle
#' @param c Le dernier côté du triangle
#' @return Retourne l'aire du triangle
#' @examples
#' heron(10,20,15)
#' heron("bidule","chouette",3)
heron <- function(a, b, c){

  if (is.numeric(a) & is.numeric(b) & is.numeric(c)){
    if (a <= 0 | b <= 0 | c<=0)
      warning("Attention, un des éléments est inférieur ou égal à 0")
    else{
      p = demi_perimetre(a, b, c)
      aire = sqrt((p*(p-a))*(p-b)*(p-c))

      if (is.nan(aire))
        warning("Ce triangle n'existe pas")
      else
        return(aire)
    }
  }
  else{
    stop("Attention, un des arguments n'est pas numérique")
  }


}
# heron(10,20,15)
# heron(10,10,10)
# heron(10,25,3)
# heron(10,25,0)
# heron("bidule","chouette",3)

# devtools::document(), une fois que tout est fait
