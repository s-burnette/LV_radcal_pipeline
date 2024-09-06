fixed = './images/Stitch2.bmp'
moving = './images/Stitch3.bmp'

fixed_read = imread(fixed);
moving_read = imread(moving);

[optimizer, metric]  = imregconfig('monomodal');

optimizer.GradientMagnitudeTolerance = 1e-5;
optimizer.MaximumIterations = 400;
optimizer.MinimumStepLength = 5e-2;

metric = registration.metric.MattesMutualInformation;

 metric.NumberOfSpatialSamples = 500;
 metric.NumberOfHistogramBins = 256;
 metric.UseAllPixels = 1;

 metric = registration.metric.MeanSquares;

moving_reg = imregister(moving_read,fixed_read,"rigid", optimizer, metric);

figure
imshowpair(moving_reg, fixed_read, 'blend')