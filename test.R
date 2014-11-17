downloadFile <- function(){
    if (!getwd() == "c:\\Rex"){
        setwd("c:\\Rex")
    }

    if (!file.exists("c:\\Rex\\get_clean_data")){
        dir.create("c:\\Rex\\get_clean_data")
    }

    file_url = "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
    download.file(file_url, "c:\\Rex\\get_clean_data\\cameras.csv", "curl")

    dateDownloaded <- date()
}
