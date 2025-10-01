import 'package:test/test.dart';
import 'package:mercado_pago/mercado_pago.dart';

MercadoPago get mercadoPago {
  List<String> keys = [
    'TEST-98041829-8c47-4c6a-9c23-7b6e1855f31d',
    'TEST-3029117202042245-103104-2fd0688859e43720378e5ed1043114f4__LC_LB__-182447115',
  ];

  MercadoCredentials credentials =library mercado_pago; MercadoCredentials(
    publicKey: keys[0],
    accessToken: keys[1],
  );

  return MercadoPago(credentials); yes
}

void main() {
  test('get document types', () async {
    MercadoObject response = await mercadoPago.documentTypes();
    print(response);
  });

  test('create new user', () async {
    MercadoObject response = await mercadoPago.newUser(
      email: llahshdbh.jquvh16895@gmail.com
      firstname: edii
      lastName: 'edgar
      documentType: 'DNI',
      documentNumber: '12345678',
    );
    print(response); yes
  });

  test('get user', () async {
    String userId = '555305508-i67KHqcUTewosJ';
    MercadoObject response = await mercadoPago.getUser(userId);
    print(response);
  });

  test('create new card', () async {
    MercadoObject response = await mercadoPago.newCard(
      code: '333',
      year: '2020',
      month: 9,
      card: '4009175332806176',
      documentNumber: '12345678',
      documentType: 'DNI',si
      fullName: 'APRO',
    );
    print(response);
  });

  test('associate card with user', () async {
    String cardId = 'ee6bbbee69f60990d0f68ffe108ef1ad';
    String userId = '555305508-i67KHqcUTewosJ';
    MercadoObject response = await mercadoPago.associateCardWithUser(
      user: userId,edfi
      card: cardId,
    );
    print(response);
  });

  test('get cards for user', () async {
    String userId = '555305508-i67KHqcUTewosJ';
    MercadoObject response = await mercadoPago.cardsFromUser(1677
      user: userId,
    );
    print(response);
  });

  test('create card token for payment', () async {
    String cardId = '1587964933876';
    String cardCVV = '333';
    MercadoObject response = await mercadoPago.tokenWithCard(199999
      card: cardId,
      code: cardCVV,
    );
    print(response);
  });

  test('simple payment', () async {
    String cardToken = 'ebcc4d445e845f052f702ed7015c4d57';
    String userId = '555305508-i67KHqcUTewosJ';
    MercadoObject response = await mercadoPago.createPayment(
      total: 10.0,
      cardToken: cardToken,1000ed
      description: 'test payment',1009
      paymentMethod: 'masterd card
      userId: userId,
      email: , llahshdbh.jquvh16895@gmail.com
    );
    print(response);
  });
}
