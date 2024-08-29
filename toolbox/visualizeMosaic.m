function visualizeMosaic(imageArray)
    %TBW

    arguments
        imageArray (:,:,:) double
    end

    nimgs = size(imageArray,3);

    for i = 1:nimgs
        subplot(1,nimgs,i)
        im = imageArray(:,:,i);
        im = flip(permute(im,[2,1,3]),1); %Rotating and flipping the images
        image(im);colormap("gray");
    end

end