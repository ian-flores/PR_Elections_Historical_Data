# PR Elections Historical Data

## English

This repo contains all the the historical data from the Puerto Rico's Electoral Commission webpage to make it accesible in a way that can be combined with Census data, as well as other socio-economic indicators to better explain political patterns in Puerto Rico. The scraping was done using Python and Beautiful Soup and the data cleaning and wrangling was done using R and the tidyverse. 

### Repo Structure

- `data/` contains two sub-folders:
    - `temporary_data` has the data as scraped from Python in individual files per year.
    - `elecciones_generales` has the final data once cleaned. 
    
- `src` contains two sub-folders:
    - `get_data` has the python script to pull all the data and scrape the tables. 
    - `clean_data` has the R script to clean and wrangle the data. 
    
- `doc` contains the two blog posts (English and Spanish) that were published in my webpage: www.bayesianpolitik.me 

#### Acknowledgments:

- Sonia Collazo and her family for providing the name of the party labeled `P_P` as `Partido_del_Pueblo`. 

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons Licence" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.

## Español

Este repositorio tiene todos los datos catalogados como históricos en la página de la Comisión Estatal de Elecciones de Puerto Rico para hacerlos accesible en un formato que pueda ser combinado con datos del Censo, así como otros indicadores socio-económicos para entender mejor los patrones políticos en Puerto Rico. La descarga de los datos y el scraping fue hecho con Python y Beautiful Soup, y la limpieza y estructuracion de los datos fue hecha con R y el tidyverse.

### Estructura del Repositorio

- `data/` contiene dos sub-folders:
    - `temporary_data` tiene los datos anuales descargados de Python.
    - `elecciones_generales` tiene los datos limpios finalizados. 
    
- `src` contiene dos sub-folders:
    - `get_data` tiene el script de Python que descarga todos los datos y extrae las tablas.
    - `clean_data` tiene el script de R que limpia y estructura los datos. 
    
- `doc` contiene los dos blog posts (Español e Ingles) que se publicaron en mi pagina: www.bayesianpolitik.me 

#### Agradecimientos:

- Sonia Collazo y su familia por proveer el nombre del partido con codigo `P_P` como `Partido_del_Pueblo`.

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons Licence" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />Este trabajo tiene una licencia bajo <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
