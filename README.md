
<!-- README.md is generated from README.Rmd. Please edit that file -->

# datasus

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

Esse pacote objetiva disponibilizar os dados do datasus no R.

## Installation

Para instalar o pacote, rode o comando abaixo em seu console do R.

``` r
# install.packages("devtools")
devtools::install_github("tomasbarcellos/datasus")
```

## Example

Eis um exemplo de como usar o pacote

``` r
library(datasus)
df_datasus <- datasus('SIASUS', 'dados', 'ACF', 18, 'SP', '01')
df_datasus
#> # A tibble: 537 x 56
#>    AP_MVM AP_CONDIC AP_GESTAO AP_CODUNI AP_AUTORIZ AP_CMP AP_PRIPAL
#>    <fct>  <fct>     <fct>     <fct>     <fct>      <fct>  <fct>    
#>  1 201801 EP        350000    2748029   351821845~ 201801 04180100~
#>  2 201801 EP        350000    2748029   351821845~ 201801 04180100~
#>  3 201801 EP        350000    2748029   351821846~ 201801 04180100~
#>  4 201801 EP        350000    2748029   351821846~ 201801 04180100~
#>  5 201801 EP        350000    2755130   351821502~ 201801 04180100~
#>  6 201801 EP        350000    3126838   351821846~ 201801 04180100~
#>  7 201801 EP        350000    2790610   351821064~ 201801 04180100~
#>  8 201801 EP        350000    3154068   351821219~ 201801 04180100~
#>  9 201801 EP        350000    3154068   351821219~ 201801 04180100~
#> 10 201801 EP        350000    3445194   351821723~ 201801 04180100~
#> # ... with 527 more rows, and 49 more variables: AP_VL_AP <dbl>,
#> #   AP_UFMUN <fct>, AP_TPUPS <fct>, AP_TIPPRE <fct>, AP_MN_IND <fct>,
#> #   AP_CNPJCPF <fct>, AP_CNPJMNT <fct>, AP_CNSPCN <fct>, AP_COIDADE <fct>,
#> #   AP_NUIDADE <fct>, AP_SEXO <fct>, AP_RACACOR <fct>, AP_MUNPCN <fct>,
#> #   AP_UFNACIO <fct>, AP_CEPPCN <fct>, AP_UFDIF <fct>, AP_MNDIF <fct>,
#> #   AP_DTINIC <fct>, AP_DTFIM <fct>, AP_TPATEN <fct>, AP_TPAPAC <fct>,
#> #   AP_MOTSAI <fct>, AP_OBITO <fct>, AP_ENCERR <fct>, AP_PERMAN <fct>,
#> #   AP_ALTA <fct>, AP_TRANSF <fct>, AP_DTOCOR <fct>, AP_CODEMI <fct>,
#> #   AP_CATEND <fct>, AP_APACANT <fct>, AP_UNISOL <fct>, AP_DTSOLIC <fct>,
#> #   AP_DTAUT <fct>, AP_CIDCAS <fct>, AP_CIDPRI <fct>, AP_CIDSEC <fct>,
#> #   AP_ETNIA <fct>, ACF_DUPLEX <fct>, ACF_USOCAT <fct>, ACF_PREFAV <fct>,
#> #   ACF_FLEBIT <fct>, ACF_HEMATO <fct>, ACF_VEIAVI <fct>, ACF_PULSO <fct>,
#> #   ACF_VEIDIA <fct>, ACF_ARTDIA <fct>, ACF_FREMIT <fct>, AP_NATJUR <fct>
```

Para saber os sistemas que estao disponiveis no datasus, basta usar a
funcao `sistemas_disponiveis()`.

``` r
sistemas_disponiveis()
#> # A tibble: 13 x 2
#>    sistema              descricao                                          
#>    <chr>                <chr>                                              
#>  1 SIHSUS               Arquivos dissemináveis para tabulação do Sistema d~
#>  2 SIASUS               Arquivos dissemináveis para tabulação do Sistema d~
#>  3 SIM                  Arquivos dissemináveis para tabulação do Sistema d~
#>  4 CIH                  Arquivos dissemináveis para tabulação do Sistema d~
#>  5 CIHA                 Arquivos dissemináveis para tabulação do Sistema d~
#>  6 SINASC               Arquivos dissemináveis para tabulação do Sistema d~
#>  7 SISPRENATAL          Arquivos dissemináveis para tabulação do Sistema d~
#>  8 CNES                 Arquivos dissemináveis para tabulação do Cadastro ~
#>  9 Base Territorial     "Arquivos com a base territorial (municípios, regi~
#> 10 Base Populacional    "Arquivos com a distribuição da população brasilei~
#> 11 CMD                  Arquivos dissemináveis para tabulação do Sistema d~
#> 12 SINAN - DADOS FINAIS Arquivos dissemináveis para tabulação do Sistema d~
#> 13 SINAN - DADOS PRELI~ Arquivos dissemináveis para tabulação do Sistema d~
```
