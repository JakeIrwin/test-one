program prjWickhamBar;

uses
  Forms,
  uDatabaseDDL in 'uDatabaseDDL.pas' {frmDatabase};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmDatabase, frmDatabase);
  Application.Run;
end.
