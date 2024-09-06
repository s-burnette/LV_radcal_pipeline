image_dir = './images/';
filePattern = fullfile(image_dir, '*.bmp');
images = dir(filePattern);

disp(images(1))
for k = 1 : (length(images))

    if k == 1
        fixed = images(1)
        fixed_read = imread(fixed.name);

    else
        fixed_read = stitched

    end

    moving = images(k+1)
    moving_read = imread(moving.name);

    fprintf(1, 'Now stitching %s\n', moving.name);
    
    [optimizer, metric]  = imregconfig('monomodal');
    
    optimizer.GradientMagnitudeTolerance = 1e-4;
    optimizer.MaximumIterations = 300;
    optimizer.MinimumStepLength = 1e-4;
    optimizer.RelaxationFactor = 0.9;
   
    

    metric = registration.metric.MeanSquares;
    
    %metric = registration.metric.MattesMutualInformation;
    
    %metric.NumberOfSpatialSamples = 1500;
    %metric.NumberOfHistogramBins = 256;
    %metric.UseAllPixels = 1;
    
    moving_reg = imregister(moving_read,fixed_read,"translation", optimizer, metric, DisplayOptimization=true)
    
    figure
    imshowpair(fixed_read, moving_reg,"Scaling","joint")
    
    stitched = cat(2,fixed_read,moving_reg);
end

imshow(stitched)