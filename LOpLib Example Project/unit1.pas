unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, OpenGLContext, Forms, Controls, Graphics,
  Dialogs, GLU, GL, LOpLib;

type

  { TForm1 }

  TForm1 = class(TForm)
    OnApp: TApplicationProperties;
    OpenGLControl1: TOpenGLControl;
    procedure FormCreate(Sender: TObject);
    procedure OnAppIdle(Sender: TObject; var Done: Boolean);
    procedure OpenGLControl1Paint(Sender: TObject);
    procedure OpenGLControl1Resize(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  angle: REAL;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  Application.AddOnIdleHandler(@onAppIdle);
  angle := 0;
end;

procedure TForm1.OnAppIdle(Sender: TObject; var Done: Boolean);
begin
  Done:= FALSE;
  OpenGLControl1.Invalidate;
end;

procedure TForm1.OpenGLControl1Paint(Sender: TObject);
begin
  //color R, color G, color B
  loplib.Setup(1, 1, 1);
  //width, height, depth, color R, color G, color B

  glPushMatrix();
    glTranslateF(0.5, 0, 0);
    glRotateF(angle, 0, 0, 1);
    loplib.MakeSquare(1, 1, 1, 0, 0, 2);
  glPopMatrix();

  loplib.MakeSquare(1, 1, 0, 1, 0, 1);

  angle += 2;
  IF angle >= 360 THEN angle := 0;
  //----------------
  glFlush();
  OpenGLControl1.SwapBuffers;
end;

procedure TForm1.OpenGLControl1Resize(Sender: TObject);
begin
  IF OpenGLControl1.Height <=0 THEN EXIT;
end;

end.

