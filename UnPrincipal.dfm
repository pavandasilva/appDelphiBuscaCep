object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Buscador de Endere'#231'o'
  ClientHeight = 240
  ClientWidth = 292
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
    Left = 8
    Top = 71
    Width = 62
    Height = 13
    Caption = 'Logradouro :'
  end
  object Label2: TLabel
    Left = 8
    Top = 111
    Width = 35
    Height = 13
    Caption = 'Bairro :'
  end
  object Label3: TLabel
    Left = 8
    Top = 151
    Width = 40
    Height = 13
    Caption = 'Cidade :'
  end
  object Label4: TLabel
    Left = 8
    Top = 191
    Width = 69
    Height = 13
    Caption = 'Complemento:'
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 273
    Height = 57
    Caption = 'Dig'#237'te o CEP:'
    TabOrder = 0
    object edtCEP: TEdit
      Left = 16
      Top = 15
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Button1: TButton
      Left = 143
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Buscar'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object edtLogradouro: TEdit
    Left = 8
    Top = 86
    Width = 273
    Height = 21
    TabOrder = 1
  end
  object edtBairro: TEdit
    Left = 8
    Top = 126
    Width = 273
    Height = 21
    TabOrder = 2
  end
  object edtCidade: TEdit
    Left = 8
    Top = 166
    Width = 273
    Height = 21
    TabOrder = 3
  end
  object edtComplemento: TEdit
    Left = 8
    Top = 206
    Width = 273
    Height = 21
    TabOrder = 4
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 240
    Top = 40
  end
end
