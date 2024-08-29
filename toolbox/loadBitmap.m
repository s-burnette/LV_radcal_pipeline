function dataArray = loadBitmap(filePath)
    % Setting up the skeleton for a functPon that will load in a generalized bit map image for calibration

    arguments
        filePath (1,1) string
    end

    rawData = imread(filePath); %May not be imread, but some kind of loading function

    %{
        This will be some kind of data scrubbing/formatting
    %}

    dataArray = rawData;
end