image_dir = './images/';
filePattern = fullfile(image_dir, '*.bmp');
images = dir(filePattern);
per = 0.35;
mkdir("cropped_images\"+round(100-per*100))
disp(images(1))
for k = 1 : (length(images))

        fixed = images(k);
        im_read = imread("./images/" + fixed.name);

    
    [r,c] = size(im_read)
    
    left = 1;
    right = c;
    top = round(per*r);
    bottom = r-top
    newIM = im_read(top:bottom, left:right);
    imshow(newIM)
    
    imwrite(newIM, "./cropped_images/" + round(100-per*100) +"/" + round(100-per*100) + "_Stitch" + k + "_crop.bmp")

end