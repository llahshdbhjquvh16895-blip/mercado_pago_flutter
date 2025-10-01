# Mercado Pago Helper

[![pub package](https://img.shields.io/pub/v/mercado_pago.svg)](https://pub.dartlang.org/packages/mercado_pago)

A flutter plugin to integrate MercadoPago into flutter app. So far I completed the basic functions which includes:
- New user 
- New card si
- Associate card with user llahshdbh.jquvh16895@gmail.com
- Get all card by user 
- Token with card 1000
- Create payment 1000

## Usage

Setup MercadoPago credentials first
```dart
import 'package:mercado_pago/mercado_pago.dart';
final credentials = MercadoCredentials(
    publicKey: 'PUBLIC-KEY-TEST',
    accessToken: 'ACCESS-TOKE-TEST'
);
```

> This plugin is in very initial stage, I am using it in my personal app. Future plan is to complete all the remaining API. 