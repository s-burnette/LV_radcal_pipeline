function imageMosaic = loadImageFolder()
    %Brings up a file-selecting UI to select a folder that contains bitmap images and places them in a 3D array where the dimensions are (Xsize,Ysize,# of Images)

    folderPath = uigetdir(pwd,'Select Folder containing Images to be Stitched'); %Getting folder from UI

    dinfo = dir(folderPath);
    dinfo = dinfo(3:end);

    fprintf('%s was selected for stitching.\nIt contains files:\n',folderPath)

    dinfo_imgs = dinfo(not([dinfo.isdir]));
    nimgs = length(dinfo_imgs);
    img_size = size(loadBitmap(fullfile(dinfo_imgs(1).folder,dinfo_imgs(2).name)));
    img_arr = zeros(img_size(1),img_size(2),nimgs);

    for i = 1:nimgs
        file = dinfo(i);
        if file.isdir == 0
            im = loadBitmap(fullfile(file.folder,file.name));
            img_arr(:,:,i) = im;
            fprintf('  ---> %s size: (%d,%d)\n',file.name,size(im))
        end
    end

    imageMosaic = img_arr;%ls(fullfile(dinfo.folder),'*.bmp');

end