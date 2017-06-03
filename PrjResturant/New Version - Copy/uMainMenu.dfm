object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Main Menu'
  ClientHeight = 408
  ClientWidth = 758
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 272
    Top = 24
    Width = 199
    Height = 50
    Caption = 'Main Menu'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 50
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object BtnCustomerSelect: TButton
    Left = 96
    Top = 112
    Width = 199
    Height = 73
    Caption = 'Customers'
    TabOrder = 0
    OnClick = BtnCustomerSelectClick
  end
  object BtnBookingSelect: TButton
    Left = 448
    Top = 112
    Width = 199
    Height = 73
    Caption = 'Bookings'
    TabOrder = 1
    OnClick = BtnBookingSelectClick
  end
  object BtnStockSelect: TButton
    Left = 96
    Top = 256
    Width = 199
    Height = 73
    Caption = 'Stock'
    TabOrder = 2
    OnClick = BtnStockSelectClick
  end
  object BtnLogOut: TButton
    Left = 648
    Top = 352
    Width = 95
    Height = 41
    Caption = 'Log Out'
    TabOrder = 3
    OnClick = BtnLogOutClick
  end
  object BtnTillSelect: TButton
    Left = 448
    Top = 256
    Width = 199
    Height = 73
    Caption = 'Till'
    TabOrder = 4
    OnClick = BtnTillSelectClick
  end
end
