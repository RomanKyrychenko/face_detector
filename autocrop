#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sat Nov 18 14:08:55 2017

@author: romankyrychenko
"""

import cv2
import sys
import glob 
import os

cascPath = "/Users/romankyrychenko/opencv/data/haarcascades/haarcascade_frontalface_default.xml"

# Create the haar cascade
faceCascade = cv2.CascadeClassifier(cascPath)

newpath = '/Users/romankyrychenko/recognition/efir/cropped' 
if not os.path.exists(newpath):
    os.makedirs(newpath)

files=glob.glob("/Users/romankyrychenko/recognition/efir/*.png")   
for file in files:

    # Read the image
    image = cv2.imread(file)
    gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)

    # Detect faces in the image
    faces = faceCascade.detectMultiScale(gray,
        scaleFactor=1.1,
        minNeighbors=5,
        minSize=(30, 30),
        flags=cv2.CASCADE_SCALE_IMAGE)

    print ("Found {0} faces!".format(len(faces)))

    # Crop Paddi
    left = 10
    right = 10
    top = 10
    bottom = 10

    # Draw a rectangle around the faces
    for (x, y, w, h) in faces:
        print (x, y, w, h)

        # Dubugging boxes
        #cv2.rectangle(image, (x, y), (x+w, y+h), (0, 255, 0), 2)


        image  = image[y-top:y+h+bottom, x-left:x+w+right]

        print ("cropped_{1}{0}".format(str(file),str(x)))
        cv2.imwrite(newpath+"/cropped_{1}_{0}/"+os.path.basename(file), image)
