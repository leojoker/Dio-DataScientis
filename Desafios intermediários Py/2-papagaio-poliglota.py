while True:
    try:
      entrada = input()
      papagaio = dict(esquerda='ingles', direita='frances', nenhuma='portugues', ambas='caiu')

      for value, key in papagaio.items():
        if entrada == value:
          print(key)
    except EOFError:
        break