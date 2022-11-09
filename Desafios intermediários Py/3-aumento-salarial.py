#TODO:  Calcule o salário do funcionário e print o novo salário, bem como o valor de reajuste ganho e o índice reajustado (em porcentagem)

salario = int(input())

if salario > 0 and salario <= 600:
    print(f'Novo salario: {salario*1.17:.2f} \n Reajuste ganho: {(salario*1.17)-salario:.2f} \n Em percentual: 17 %')
elif salario > 600 and salario <= 900:
    print(f'Novo salario: {salario * 1.13:.2f} \n Reajuste ganho: {(salario * 1.13) - salario:.2f} \n Em percentual: 13 %')
elif salario > 900 and salario <= 1500:
    print(f'Novo salario: {salario * 1.12:.2f} \n Reajuste ganho: {(salario * 1.12) - salario:.2f} \n Em percentual: 12 %')
elif salario > 1500 and salario <= 2000:
    print(f'Novo salario: {salario * 1.10:.2f} \n Reajuste ganho: {(salario * 1.10) - salario:.2f} \n Em percentual: 10 %')
elif salario > 2000:
    print(f'Novo salario: {salario * 1.05:.2f} \n Reajuste ganho: {(salario * 1.05) - salario:.2f} \n Em percentual: 5 %')