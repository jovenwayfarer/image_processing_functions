# image_processing_functions
functions implemented for "Image processing" course
<br />
function  new_image  = bilinear_black_and_white( I,ratio )<br />
I - input image<br />
ratio - (new_image_size=old_image_size*ratio) any positive real number<br />
new_image - new scaled image <br />
function uses bilinear interpolation for scaling grayscale images<br />
<br />
function  new_image  = bilinear_rgb( I,ratio )<br />
I - input image<br />
ratio - (new_image_size=old_image_size*ratio) any positive real number<br />
new_image - new scaled image <br />
function uses bilinear interpolation for scaling rgb images<br />
<br />
function border = borderline( image )<br />
image - input<br />
border - new image where border pixels are white and others are black<br />
function finds borders of black objects in white background<br />
<br />
function  image_new  = nearest_neighbor_black_and_white( I,ratio )<br />
I - input image<br />
ratio - (new_image_size=old_image_size*ratio) any positive real number<br />
new_image - new scaled image <br />
function uses nearest neighbor interpolation for scaling grayscale images<br />
<br />
function I_new = nearest_neighbor_rgb( I, ratio )<br />
I - input image<br />
ratio - (new_image_size=old_image_size*ratio) any positive real number<br />
new_image - new scaled image <br />
function uses nearest neighbor interpolation for scaling rgb images<br />
<br />
function new_image = to_black_white( I, treshold)<br />
I - input image (grayscale)<br />
treshold - pixels having intensity level larger than treshold are set to white, other to black<br />
function transforms grayscale image to binary<br />
<br />
