% This script creates an image processing menu driven application

%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% your information
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;close all;clc;

% Display a menu and get a choice
choice = menu('Choose an option', 'Exit Program', 'Load Image', ...
    'Display Image', 'Brighten Image','Invert Image','Random Noise','Luminance','Composite','Color Swap','Flag','Wrench','Mean Filter');  % as you develop functions, add 
                                         % buttons for them here
 
% Choice 1 is to exit the program
while choice ~= 1
   switch choice
       case 0
           disp('Error - please choose one of the options.')
           % Display a menu and get a choice
           choice = menu('Choose an option', 'Exit Program',...
               'Load Image', 'Display Image', 'Brighten Image','Invert Image','Random Noise','Luminance','Composite','Color Swap','Flag','Wrench','Mean Filter');  
                      % as you develop functions, add buttons for them here
        case 2
           % Load an image
           image_choice = menu('Choose an image', 'lena1', 'mandril1',...
               'wrench', 'yoda');
           switch image_choice
               case 1
                   filename = 'lena1.jpg';
               case 2
                   filename = 'mandrill1.jpg'; 
               case 3
                   filename = 'wrench1.jpg'; 
               case 4
                   filename = 'yoda.bmp';
               % fill in cases for all the images you plan to use
           end
           current_img = imread(filename);
       case 3
           % Display image
           figure
           imagesc(current_img);
           if size(current_img,3) == 1
               colormap gray
           end   
       case 4
           % Brighten image
           brighten_image_choice = menu('Choose Brightening Function','Brightness w/o loops','Brightness with loops');
           switch brighten_image_choice
               case 1
                   % 1. Ask the user for brightness value
                   brightness = input('Input desired brightness coeffecient within range of -255 and 255.');
                   % 2. Call the appropriate function
                   newImage = makeBright_NL(current_img, brightness);
               case 2
                   % create your own function for brightening
                   brightness = input('Input desired brightness coeffecient within range of -255 and 255.');
                   newImage = makeBright_L(current_img, brightness);
           end
           % 3. Display the old and the new image using subplot
           subplot(2,2,1)
           imagesc(current_img)
           subplot(2,2,2)
           imagesc(newImage)
           % 4. Save the newImage to a file
           imwrite(newImage,'saved_Image_brightness.jpg');      
       case 5
           Invert_Image_Choice = menu('Invert Functions','Invert with loops','Invert w/o loops');
           switch Invert_Image_Choice
               case 1 
                   newImage=invert_L(current_img);
               case 2 
                   newImage=invert_NL(current_img);
           end
           % 3. Display the old and the new image using subplot
           subplot(2,2,1)
           imagesc(current_img)
           subplot(2,2,2)
           imagesc(newImage)
           % 4. Save the newImage to a file
           imwrite(newImage,'saved_Image_Invert.jpg');
       case 6
           Random_Noise_Choice = menu('Noise Functions','Noise with loops','Noise w/o loops');
           switch Random_Noise_Choice
               case 1 
                   newImage=addRandomNoise_L(current_img);
               case 2 
                   newImage=addRandomNoise_NL(current_img);
           end
           % 3. Display the old and the new image using subplot
           subplot(2,2,1)
           imagesc(current_img)
           subplot(2,2,2)
           imagesc(newImage)
           % 4. Save the newImage to a file
           imwrite(newImage,'saved_Image_Noise.jpg');
           
       case 7
           Luminance_Choice = menu('Luminance Functions','Luminance with loops','Luminance w/o loops');
           switch Luminance_Choice
               case 1 
                   newImage=luminance_L(current_img);
               case 2 
                   newImage=luminance_NL(current_img);
           end
           % 3. Display the old and the new image using subplot
           subplot(2,2,1)
           imshow(current_img)
           subplot(2,2,2)
           imshow(newImage)
           % 4. Save the newImage to a file
           imwrite(newImage,'saved_Image_Luminance.jpg');
       case 8
           newImage=composite(current_img);
           % 3. Display the old and the new image using subplot
           subplot(2,2,1)
           image(current_img)
           subplot(2,2,2)
           image(newImage)
           % 4. Save the newImage to a file
           imwrite(newImage,'saved_Image_Composite.jpg');
       case 9
           newImage=color_swap(current_img,150,30,30,30,150,30,30);
           % 3. Display the old and the new image using subplot
           subplot(2,2,1)
           image(current_img)
           subplot(2,2,2)
           image(newImage)
           % 4. Save the newImage to a file
           imwrite(newImage,'saved_Image_Swap.jpg');
       case 10
           % Load an image
           image_choice2 = menu('Choose an image', 'lena1', 'mandril1',...
               'wrench', 'yoda');
           switch image_choice2
               case 1
                   filename = 'lena1.jpg';
               case 2
                   filename = 'mandrill1.jpg'; 
               case 3
                   filename = 'wrench1.jpg'; 
               case 4
                   filename = 'yoda.bmp';
               % fill in cases for all the images you plan to use
           end
           current_img2 = imread(filename);
           %%
           % Load an image
           image_choice3 = menu('Choose an image', 'lena1', 'mandril1',...
               'wrench', 'yoda');
           switch image_choice3
               case 1
                   filename = 'lena1.jpg';
               case 2
                   filename = 'mandrill1.jpg'; 
               case 3
                   filename = 'wrench1.jpg'; 
               case 4
                   filename = 'yoda.bmp';
               % fill in cases for all the images you plan to use
           end
           current_img3 = imread(filename);
           %%
           newImage=flag(current_img,current_img2,current_img3);
           % 3. Display the old and the new image using subplot
           subplot(2,2,1)
           image(current_img)
           subplot(2,2,2)
           image(current_img2)
           subplot(2,2,3)
           image(current_img3)
           subplot(2,2,4)
           image(newImage)
           % 4. Save the newImage to a file
           imwrite(newImage,'saved_Image_Flag.jpg');
       case 11
           newImage=binaryMask(current_img);
           % 3. Display the old and the new image using subplot
           subplot(2,2,1)
           imshow(current_img)
           subplot(2,2,2)
           imshow(newImage)
           % 4. Save the newImage to a file
           imwrite(newImage,'saved_Image_Wrench.jpg');
       case 12
           newImage=meanFilter(current_img);
           % 3. Display the old and the new image using subplot
           subplot(2,2,1)
           image(current_img)
           subplot(2,2,2)
           image(newImage)
           % 4. Save the newImage to a file
           imwrite(newImage,'saved_Image_Mean.jpg');
   end
   % Display menu again and get user's choice
   choice = menu('Choose an option', 'Exit Program', 'Load Image', ...
    'Display Image', 'Brighten Image','Invert Image','Random Noise','Luminance','Composite','Color Swap','Flag','Wrench','Mean Filter'); 
   % as you develop functions, add buttons for them here
end
