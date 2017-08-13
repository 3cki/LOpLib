//---------------------------------
//----------LOpLib 1.0-------------
//----------13.08.2017-------------
//-------Maximilian Eckert---------
//---------------------------------

unit LOpLib;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, GLU, GL, OpenGLContext;
  procedure Setup(r, g, b: REAL);
  procedure MakeSquare(width, height, r, g, b, layer: REAL);
  procedure MakeCube(width, height, depth, r, g, b: REAL);
  procedure MakePyramid(right, left, up, down, front, back, r, g, b: REAL);

implementation

//-----------SETUP----------
procedure Setup(r, g, b: REAL);
begin
  glClearColor(r, g, b, 1.0);
  glClear(GL_COLOR_BUFFER_BIT or GL_DEPTH_BUFFER_BIT);
  glLoadIdentity;
  GLMatrixMode(GL_MODELVIEW);
  glEnable(GL_Depth_Test);
end;

//-----------SQUARE----------
procedure MakeSquare(width, height, r, g, b, layer: REAL);
var right, left, top, bottom: REAL;
begin
  right := width / 2;
  left := -(width / 2);
  top := height / 2;
  bottom := -(height / 2);
  layer := -(layer / 100);   //Maximum layer count

  glColor3F(r, g, b);

  glBegin(GL_POLYGON);
    glVertex3f(left, top, layer);   //left-top
    glVertex3f(right, top, layer);   //right-top
    glVertex3f(right, bottom, layer);   //right-bottom
    glVertex3f(left, bottom, layer);   //left-bottom
 glEnd();
end;

//-----------CUBE----------
procedure MakeCube(width, height, depth, r, g, b: REAL);
var right, left, top, bottom, front, back: REAL;
begin
  right := width / 2;
  left := -(width / 2);
  top := height / 2;
  bottom := -(height / 2);
  front := depth / 2;
  back := -(depth / 2);

  glBegin(GL_QUADS);
      glColor3f(r, g, b);
      glVertex3f(left, top, front);   //front
      glVertex3f(right, top, front);
      glVertex3f(right, bottom, front);
      glVertex3f(left, bottom, front);

      glVertex3f(left, top, back);   //back
      glVertex3f(right, top, back);
      glVertex3f(right, bottom, back);
      glVertex3f(left, bottom, back);

      glVertex3f(left, top, front);   //left
      glVertex3f(left, top, back);
      glVertex3f(left, bottom, back);
      glVertex3f(left, bottom, front);

      glVertex3f(right, bottom, front);   //right
      glVertex3f(right, bottom, back);
      glVertex3f(right, top, back);
      glVertex3f(right, top, front);

      glVertex3f(left, top, front);   //up
      glVertex3f(left, top, back);
      glVertex3f(right, top, back);
      glVertex3f(right, top, front);

      glVertex3f(left, bottom, front);   //down
      glVertex3f(left, bottom, back);
      glVertex3f(right, bottom, back);
      glVertex3f(right, bottom, front);
  glEnd;
end;

//---------PYRAMID----------
procedure MakePyramid(right, left, up, down, front, back, r, g, b: REAL);
begin
  glbegin(GL_POLYGON);
      glColor3f(r, g, b);
      glVertex3f(left, down, front); //front
      glVertex3f(right, down, front);
      glVertex3f(0, up, 0);
    glend;

    glbegin(GL_POLYGON);
      glVertex3f(left, down, back);  //back
      glVertex3f(right, down, back);
      glVertex3f(0, up, 0);
    glend;

    glbegin(GL_POLYGON);
      glVertex3f(right, down, front);   //right
      glVertex3f(right, down, back);
      glVertex3f(0, up, 0);
    glend;

    glbegin(GL_POLYGON);
      glVertex3f(left, down, front);  //left
      glVertex3f(left, down, back);
      glVertex3f(0, up, 0);
    glend;

    glBegin(GL_QUADS);
      glVertex3f(left, down, front);   //bottom
      glVertex3f(left, down, back);
      glVertex3f(right, down, back);
      glVertex3f(right, down, front);
    glEnd;
end;

end.
