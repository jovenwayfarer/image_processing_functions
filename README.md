# image_processing_functions
functions implemented for "Image processing" course
function  new_image  = bilinear_black_and_white( I,ratio )
I - input image
ratio - (new_image_size=old_image_size*ratio) any positive real number
new_image - new scaled image 
function uses bilinear interpolation for scaling grayscale images

function  new_image  = bilinear_rgb( I,ratio )
I - input image
ratio - (new_image_size=old_image_size*ratio) any positive real number
new_image - new scaled image 
function uses bilinear interpolation for scaling rgb images

function border = borderline( image )
image - input
border - new image where border pixels are white and others are black
function finds borders of black objects in white background

function  image_new  = nearest_neighbor_black_and_white( I,ratio )
I - input image
ratio - (new_image_size=old_image_size*ratio) any positive real number
new_image - new scaled image 
function uses nearest neighbor interpolation for scaling grayscale images

function I_new = nearest_neighbor_rgb( I, ratio )
I - input image
ratio - (new_image_size=old_image_size*ratio) any positive real number
new_image - new scaled image 
function uses nearest neighbor interpolation for scaling rgb images

function new_image = to_black_white( I, treshold)
I - input image (grayscale)
treshold - pixels having intensity level larger than treshold are set to white, other to black
function transforms grayscale image to binary
