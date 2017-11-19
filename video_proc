Sys.setlocale(,"UK_ua")

download_video <- function(url){
  system(paste('youtube-dl ',url))
}

install_yuotube_dl <- function(){
  
  system('sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl')
  
  system('brew install youtube-dl')
}

video_proc <- function(video,height=128,width=128,fsp=1){
  
  dir.create(gsub(".webm","",gsub(".mp4","",video)))
  
  #system(paste0('ffmpeg -i ',video,' -vf scale=',width,':',height,' 2',video))
  
  system(paste0('ffmpeg -i ',video,' -vf fps=',fsp,' ',gsub(".webm","",gsub(".mp4","",video)),'/out%d.png'))
  
}

download_video("http://91.194.250.226/media/concated_video/112_Ukraina-2017-11-10T16:00:00-2017-11-10T22:00:00.mp4")

purrr::map(bondarenko_video, download_video)

video_proc("Espreso-2017-11-17T16_00_00-2017-11-17T23_59_59.mp4",fsp = 1/10)
