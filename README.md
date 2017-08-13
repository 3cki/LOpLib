# LOpLib
Library for simple objects in OpenGL for Lazarus 1.0.10

# Features
<b>Setup</b> - Setting up the OpenGLControl. <br />
<b>MakeSquare</b> - Create a square of one color by declaring width, height and layer. <br />
<b>MakeCube</b> - Create a cube of one color by declaring width, height, and depth. <br />
<b>MakePyramid</b> - Create a pyramid of one color by declaring coordinate maxima - will be changed soon.

# How to use LOpLib
<b>If you want to use this library in your projects, please credit me.</b>

1. Copy loplib.pas into your project folder.
2. Inside the units in which you want to use LOpLib, add "LOpLib" to the end of your "uses" declaration at the top of the unit.
3. To use a LOpLib method, write loplib.methodname or LOpLib.methodname. E.g.: loplib.MakeSquare(1, 1, 1, 0, 0, 1);

# Setup
<b>Setup(r, g, b);</b>

Setting up the scene. The parameters define the background color.

<b>r</b> - REAL - Amount of red color <br />
<b>g</b> - REAL - Amount of green color <br />
<b>b</b> - REAL - Amount of blue color

# Make Square
<b>MakeSquare(width, height, r, g, b, layer);</b>

Creates two-dimensional square. The parameters define the form, color and layer.

<b>width</b> - REAL - Width of square on x <br />
<b>height</b> - REAL - Height of square y <br />
<b>r</b> - REAL - Amount of red color <br />
<b>g</b> - REAL - Amount of green color <br />
<b>b</b> - REAL - Amount of blue color <br />
<b>layer</b> - REAL - defines which object is on top of another. Useful when there are multiple two-dimensional objects over each other. The highest layer is over every other layer

# Make Cube
<b>MakeCube(width, height, depth, r, g, b);</b>

Creates cube. The parameters define the form and color.

<b>width</b> - REAL - Width of cube on x <br />
<b>height</b> - REAL - Height of cube on y <br />
<b>depth</b> - REAL - Depth of cube on z <br />
<b>r</b> - REAL - Amount of red color <br />
<b>g</b> - REAL - Amount of green color <br />
<b>b</b> - REAL - Amount of blue color

# Make Pyramid
<b>MakePyramid(right, left, up, down, front, back, r, g, b);</b>

Creates pyramid. The parameters define the form and color.

<b>right</b> - REAL - X coordinate of bottom right edge <br />
<b>left</b> - REAL - X coordinate of bottom left edge <br />
<b>up</b> - REAL - Y coordinate of pyramid peak vertice <br />
<b>down</b> - REAL - Y coordinate of bottom face <br />
<b>front</b> - REAL - Z coordinate of bottom front edge <br />
<b>back</b> - REAL - Z coordinate of bottom rear edge <br />
<b>r</b> - REAL - Amount of red color <br />
<b>g</b> - REAL - Amount of green color <br />
<b>b</b> - REAL - Amount of blue color <br />
