# TODO:  Calcule a média de cachorros quentes consumidas por participante e imprima o valor com DUAS casas decimais.

entrada = input().split()

cachorros_quentes = int(entrada[0])
pessoas = int(entrada[1])

print(f'{cachorros_quentes/pessoas:.2f}')
