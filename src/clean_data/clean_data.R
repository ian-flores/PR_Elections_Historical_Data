library(fs)
library(tidyverse)


clean_historic_data <- function(.post, .save_path){
    
    .save_path = paste0('data/elecciones_generales/', .post, '/', .post,'.csv')
    .path = paste0('data/temporary_data/', .post, '/')
    
    files <- dir_ls(path = .path)
    
    read_my_files <- function(.file_path){
        
        year_data <- str_match(paste0(.file_path),'[0-9][0-9][0-9][0-9]')[, 1]
        
        df <- read_csv(.file_path) %>%
            mutate(year_data = year_data)
        
        return(df)
    }
    
    
    data = map_dfr(files, ~ read_my_files(.x))
    print(data)
    
    data %>%
        select(municipios, contains('votos'), year_data) %>%
        gather(partido, votos, -c(municipios, year_data)) %>%
        mutate(partido = str_remove(partido, 'votos_')) %>%
        mutate(partido = str_replace(partido, 'P_I_P', 'Partido_Independentista_Puertorriqueño'),
               partido = str_replace(partido, 'P_N_P', 'Partido_Nuevo_Progresista'),
               partido = str_replace(partido, 'P_P_D', 'Partido_Popular_Democrático'),
               partido = str_replace(partido, 'P_R_P', 'Partido_Renovación_Puertorriqueña')) %>% 
        filter(!is.na(votos)) ->
        data
    print(data)
    
    write_csv(data, path = .save_path)
}

cr_post <- 'comisionado_residente'
clean_historic_data(.post = cr_post)

gov_post <- 'gobernador'
clean_historic_data(.post = gov_post)

alc_post <- 'alcalde'
clean_historic_data(.post = alc_post)