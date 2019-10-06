*** INSTALATION ***

Sampad Acharya

On Matlab

Open Matlab and run the script main.m

For drawing histogram there is a separate file name Draw_Hist.m. This file should be run separately to obtain Histograms and values of ROI must be declared inside the function. 


*** FUNCTIONS ***




6.Linear Histogram Stretching of a grey level image: HSGG
7.Bilinear Histogram Stretching of a grey level image: HSEC
8.Linear Histogram Stretching of a color image. (By the variation of any of H S or I): HSG
9.Linear Histogram Stretching of a color image directly on R, G, B channel:HSC
   

For changing H and S along with I change line no: 48 and 49 in HSG.m file. These 2 lines are commented out right now. Remove the comment sign. It will take part in programming.



1  Region of interest: ROI
It creates 3 differnt Region of interest in an image.

2. Color Binarization:Colb
Binarize the pixels of a color image with a given threshold.

3. Regular 2D smoothing:TDS
It operates in the given ROI and does regular 2D smoothing in that region by setting the pixel value to the average value calculated by averaging the neighbors. 

4. Separable 1D smoothing:ODS
It operates in the given ROI and does separable 1D smoothing in that region by setting the pixel value to the average value calculated by averaging the neighbors.

5.Edge preservation: EPS
It preserves the important edges after 2D smoothing by removing the noise. It operates in a given region by setting the pixel value to the average value calculated by averaging the neighbors.




The functions directly can be called using one main file. If one wishes to read all the parameters values from a file here is the Parameter file. 


*** PARAMETERS FILE ***

There are for parameters:



1. the input file name;
2. the output file name;
3. the name of the filter: Use HSGrey and HSGrey1 for Histogram Stretching for Grey level image and output is baboon_HSGG1.pgm. HSGreyec  for bilinear Histogram stretching and output is baboon_HSEC.pgm. HScol and HScol1 for Directly changing RGB for color image histogram stretching and final output is baboon_HSC1.ppm. HSIn and HSIn1 for H S or I variation for color image and show output on RGB plane and final output is baboon_HSG1.ppm.
4.For drawing histogram there is a seperate file name Draw_Hist.m. This file should be run separately to obtain Histograms and values of ROI must be declared inside the function. 



1. the input file name;
2. the output file name;
3. the name of the filter. Use (Region_of_Interest,Region_of_Interest1,Region_of_Interest2)for Region of interest and Region_of_Interest2 gives you the final output; (Color_Binarization, Color_Binarization1, Color_Binarization2) for color binarization and Color_Binarization2 gives you the output;(2D_Smoothing,2D_Smoothing1,2D_Smoothing2) for 2D smoothing and 2D_Smoothing2 gives you final output; (1D_Smoothing,1D_Smoothing1,1D_Smoothing2) for 1D smoothing and 1D_Smoothing 2 gives you final output;(Edge_Preserving,Edge_Preserving1,Edge_Preserving2) for Edge preserving and Edge_Preserving2 gives you final output. 
4. the value for Defining ROI size, threshold value for Color binarize filter, or the window size.
5.CR,CG,CB for color binarization. 
7.Threshold Value for operations.