image_dir = './';
filePattern = fullfile(image_dir, '*stitched.bmp');
images = dir(filePattern);

for k = 1 : (length(images))

        png = images(k);
        im_read = imread("./" + png.name);
        rotated = imrotate(im_read, 90);
        imwrite(rotated, "imgs/" + png.name + ".png")
end