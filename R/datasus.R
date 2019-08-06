#' @importFrom magrittr %>%
#' @export
magrittr::`%>%`

#' Verificar sistemas disponiveis no datasus
#'
#' @return Uma tibble com sistemas disponiveis
#' @export
#'
#' @examples
#' sistemas_disponiveis()
sistemas_disponiveis <- function(){
  "http://www2.datasus.gov.br/DATASUS/index.php?area=0901&item=1" %>%
    xml2::read_html() %>%
    rvest::html_table() %>%
    magrittr::extract2(1) %>%
    magrittr::set_names(c("sistema", "descricao")) %>%
    tibble::as_tibble()
}

#' Baixar dados do datasus
#'
#' @param sistema Sistema para baixar os dados ex:'SIHSUS'
#' os sistemas podem ser verificados com \code{\link{sistemas_disponiveis()}}
#' @param modalidade 'dados'
#' @param tipo_arquivo Tipo do arquivo ex: 'RD'. Varia conforme o sistema.
#' @param ano Dois últimos dígitos do ano ex: 17
#' @param UF Sigla de UF brasileira ex:'AL'
#' @param mes String entre 01 e 12 ex:'12'
#'
#' @return Uma tibble
#' @export
#'
#' @examples
#' df_datasus <- datasus('SIASUS', 'dados', 'ACF', 18, 'SP', '01')
datasus <- function(sistema, modalidade, tipo_arquivo, ano, UF, mes){
  link <- paste0("ftp://ftp.datasus.gov.br/dissemin/publicos/",sistema,"/",
                 "200801","_/",modalidade,"/",tipo_arquivo,UF,ano,mes,".dbc")
  dest_file <- tempfile()
  download.file(link, destfile = dest_file, mode='wb')

  read.dbc::read.dbc(dest_file) %>%
    tibble::as_tibble()
}
