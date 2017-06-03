unit uMainMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmMain = class(TForm)
    Label1: TLabel;
    BtnCustomerSelect: TButton;
    BtnBookingSelect: TButton;
    BtnStockSelect: TButton;
    BtnLogOut: TButton;
    BtnTillSelect: TButton;
    procedure BtnLogOutClick(Sender: TObject);
    procedure BtnCustomerSelectClick(Sender: TObject);
    procedure BtnBookingSelectClick(Sender: TObject);
    procedure BtnStockSelectClick(Sender: TObject);
    procedure BtnTillSelectClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses  ulogin, ucustomer, ubooking, ustock, utill;
{$R *.dfm}

procedure TfrmMain.BtnBookingSelectClick(Sender: TObject);
begin
FrmMain.Hide;
FrmBooking.show;
end;

procedure TfrmMain.BtnCustomerSelectClick(Sender: TObject);
begin
FrmMain.Hide;
FrmCustomer.show;
end;

procedure TfrmMain.BtnLogOutClick(Sender: TObject);
begin
FrmMain.Hide;
FrmLogin.show;
end;

procedure TfrmMain.BtnStockSelectClick(Sender: TObject);
begin
FrmMain.Hide;
FrmStock.show;
end;

procedure TfrmMain.BtnTillSelectClick(Sender: TObject);
begin
FrmMain.Hide;
FrmTill.show;
end;

end.
