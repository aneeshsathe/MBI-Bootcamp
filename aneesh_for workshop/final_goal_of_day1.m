
%% this section is for preliminary 2-d z-projected images

%modify file paths as per your requirement
file_path='C:\Users\Aneesh\Desktop\for workshop\SUM_cell_1.tif';
in_img=mat2gray(imread(file_path,2)); % reads the second img in the series which is a nucleus
% display image, threshold, threshold back multiply
imshow([in_img,in_img>graythresh(in_img),in_img.*(in_img>graythresh(in_img))],[])

img_prop=regionprops(in_img>graythresh(in_img)); % get properties of object

display(img_prop)%display properties of object

% time permitting we can also do a simple plot of say the areas of each nucleus

%% this section is for 3-d stacks of single cells
%modify file path as required
file_path='C:\Users\Aneesh\Desktop\for workshop\cell_2.tif';

% below for loop reads z-stacks
cell_count=0;
for count=1:2:numel(imfinfo(file_path))
    
    cell_count=cell_count+1;
    cell_in_img(:,:,cell_count)=mat2gray(imread(file_path,count));
    nuc_in_img(:,:,cell_count)=mat2gray(imread(file_path,count+1));
    
    % easy to understand way of making a displayable image of a z-stack
    % ***** THIS SHOULD IDEALLY BE DONE WITH reshape()
    if cell_count==1
        cell_disp_img=cell_in_img(:,:,cell_count);
        nuc_disp_img=nuc_in_img(:,:,cell_count);
    else
        cell_disp_img=[cell_disp_img, cell_in_img(:,:,cell_count)];
        nuc_disp_img=[nuc_disp_img, nuc_in_img(:,:,cell_count)];
    end
end

%display original z_stack
figure,imshow([cell_disp_img;nuc_disp_img],[])

%display z_stack thresholded
figure,imshow([cell_disp_img>graythresh(cell_disp_img);
    nuc_disp_img>graythresh(nuc_disp_img)],[])
% display z_stack thresholded then multiplied with original image
figure,imshow([cell_disp_img.*(cell_disp_img>graythresh(cell_disp_img));
    nuc_disp_img.*(nuc_disp_img>graythresh(nuc_disp_img))],[])
% to see pixel values chage "figure, imshow" to "imtool"

%regionprops can also be applied here to get 3d volume of objects
