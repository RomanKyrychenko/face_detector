autocrop <- function(file){
  
  require(reticulate)
  
  cv2 <- import("cv2")
  numpy <- import("numpy")
  
  cascPath = "/Users/romankyrychenko/opencv/data/haarcascades/haarcascade_frontalface_default.xml"
  
  # Create the haar cascade
  faceCascade = cv2$CascadeClassifier(cascPath)
  
  newpath = paste0(dirname(file),'/cropped') 
  if (!dir.exists(newpath)) dir.create(newpath)
  # Read the image
  image = np_array(cv2$imread(file), dtype = "uint8")
  #image = cv2$imread(file)
  
  gray = np_array(cv2$cvtColor(image, cv2$COLOR_BGR2GRAY), dtype = "uint8")
  
  # Detect faces in the image
  faces = faceCascade$detectMultiScale(gray,
                                       scaleFactor=1.1,
                                       minNeighbors=10L,
                                       minSize=tuple(30L, 30L),
                                       flags=cv2$CASCADE_SCALE_IMAGE)
  
  print(paste("Found",ifelse(length(faces)==0,0,nrow(faces)),"faces!"))
  
  # Crop Padding
  left = 10
  right = 10
  top = 10
  bottom = 10
  if(length(faces)!=0){
    purrr::map(1:nrow(faces), function(i){
      tryCatch({
        x=faces[i,1]
        y=faces[i,2]
        w=faces[i,3]
        h=faces[i,4]
        st1=y+h+bottom
        en1=y-top
        st2=x+w+right
        en2=x-left
        dim1=rev(st1:en1)
        dim2=rev(st2:en2)
        image = r_to_py(py_to_r(image)[dim1,dim2,1:3])
        
        print(paste0("cropped_",i,"_",basename(file)))
        cv2$imwrite(paste0(newpath,"/cropped_face",i,"_",basename(file)), image)
      },error = function(e) NULL)
    })
  }
}

files=list.files("/Users/romankyrychenko/recognition/5_KANAL-2017-11-17T16_00_00-2017-11-17T23_59_59/",".png",full.names = T,recursive = T)   

purrr::map(files,autocrop)
