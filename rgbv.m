% Read the original image
original_image = imread('lawn.png');
encrypted_image = imread('encrypted.png');

% Calculate and display the RGB values of the original image
[rows_orig, cols_orig, channels_orig] = size(original_image);
if channels_orig == 3
    red_channel_orig = original_image(:,:,1);
    green_channel_orig = original_image(:,:,2);
    blue_channel_orig = original_image(:,:,3);
    
    disp('Original image RGB values:');
    disp(['Red channel - min: ', num2str(min(red_channel_orig(:))), ', max: ', num2str(max(red_channel_orig(:))), ', mean: ', num2str(mean(red_channel_orig(:)))]);
    disp(['Green channel - min: ', num2str(min(green_channel_orig(:))), ', max: ', num2str(max(green_channel_orig(:))), ', mean: ', num2str(mean(green_channel_orig(:)))]);
    disp(['Blue channel - min: ', num2str(min(blue_channel_orig(:))), ', max: ', num2str(max(blue_channel_orig(:))), ', mean: ', num2str(mean(blue_channel_orig(:)))]);
else
    disp('The original image is not in RGB format.');
end

% Calculate and display the RGB values of the encrypted image
[rows_enc, cols_enc, channels_enc] = size(encrypted_image);
if channels_enc == 3
    red_channel_enc = encrypted_image(:,:,1);
    green_channel_enc = encrypted_image(:,:,2);
    blue_channel_enc = encrypted_image(:,:,3);
    
    disp('Encrypted image RGB values:');
    disp(['Red channel - min: ', num2str(min(red_channel_enc(:))), ', max: ', num2str(max(red_channel_enc(:))), ', mean: ', num2str(mean(red_channel_enc(:)))]);
    disp(['Green channel - min: ', num2str(min(green_channel_enc(:))), ', max: ', num2str(max(green_channel_enc(:))), ', mean: ', num2str(mean(green_channel_enc(:)))]);
    disp(['Blue channel - min: ', num2str(min(blue_channel_enc(:))), ', max: ', num2str(max(blue_channel_enc(:))), ', mean: ', num2str(mean(blue_channel_enc(:)))]);
else
    disp('The encrypted image is not in RGB format.');
end

% Display the original and encrypted images
subplot(1, 2, 1);
imshow(original_image);
title('Original Image');

subplot(1, 2, 2);
imshow(encrypted_image);
title('Encrypted Image');
