DESAFIO DE PROJETO DIO UNIMED-BH
Esquema conceitual de mecânica para banco de dados.


Tabelas:

Cadastro = primeira tabela a ser preenchida mediante a chegada de um automóvel. Armazena informações sobre o proprietário e o veículo.
OS (ordem de serviço) = tabela que armazena as informações dos serviços que serão prestados a determinado automóvel de um cliente.
Mecânico = Tabela responsável pelas informações das pessoas responsáveis pelo serviço. 
Mão de obra = armazena informções sobre os serviços prestados pela oficina.
Peças = guarda informações sobre as peças disponíveis.

Relacionamentos(descrição): 
Um mecânico pode ter acesso a vários registros(1:N) e várias OS(1:N). Ele também tem acesso à tabela de Mão-de-obra(1:1) que por sua vez é conectada com a tabela de peças(1:1).
Uma tabela Cadastro pode gerar várias OS(1:N), já que o proprietário pode vir mais de uma vez realizar diferentes serviços.