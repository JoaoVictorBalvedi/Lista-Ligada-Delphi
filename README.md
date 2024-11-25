A estrutura de lista ligada é muito comum no armazenamento de grandes volumes de informações. Consiste em ligar de uma forma lógica os diversos elementos de um conjunto, com o objetivo de permitir um acesso mais rápido a cada um deles. É utilizada quando o acesso ao conjunto de informações for muito freqüente, seja para atualizações, seja para consultas. 
Pode-se construir uma estrutura de lista ligada utilizando-se uma matriz onde uma das colunas, por exemplo, seja reservada para as diversas ligações. 
Exemplo: 
Considere o arquivo de uma empresa relacionando para cada funcionário seu número, seu e seu departamento. Como a administração desta empresa é feita a nível de departamento é importante que no arquivo os funcionários de cada um dos departamentos estejam relacionados entre si e ordenados seqüencialmente pelo seu número. Como são freqüentes as mudanças interdepartamentais no quadro de funcionários, não é conveniente reestruturar o arquivo a cada uma destas mudanças. Desta maneira, o arquivo poderia ser organizad	o da seguinte forma: 
![image](https://github.com/user-attachments/assets/7fa4a5d3-3033-4ce1-86b0-8b25caf6ddd6)

Observe que a quarta coluna (ligação) da matriz A estabelece a ordem interna dos funcionários de cada departamento, apontando para cada um qual o próximo em ordem numérica no seu departamento. Ou seja, cada funcionário aponta para outro cujo campo nº do funcionário seja necessariamente maior, compondo assim uma lista ordenada por nº do funcionário, dentro de cada departamento. O número “-1” indica ser o último funcionário do departamento. Para cada novo funcionário da companhia é atribuído um número e é acrescentada uma linha na matriz e preenchidas as colunas departamento e ligação. Para mudanças interdepartamentais basta alterar a terceira e quarta colunas. Uma vez adicionado um funcionário no final da matriz A, ele nunca irá mudar de linha, independente das operações realizadas sobre o mesmo.
A matriz B indica, para cada departamento, a linha do primeiro funcionário. 
Escreva um programa que: 
(a) Admita a existência de uma matriz de funcionários como a especificada acima (as matrizes A e B devem ser lidas, inclusive a quarta coluna da matriz A). 
(b) Permita através de funções (uma para cada caso) as seguintes operações, atualizando as matrizes A e B: 
  
  i. Admissão de funcionário novo na empresa; 
  ii. Demissão de funcionário da empresa; 
  iii. Mudança de departamento por um funcionário.

Para estas operações devem ser lidas as informações: 
Número do funcionário;
Número do departamento ao qual o funcionário passa a pertencer (não utilizado para operação de demissão);
Número do departamento do qual o funcionário foi desligado (só utilizado para operação de demissão).
A operação de demissão do funcionário deve remover o item da sequência de ligações do departamento e definir o campo ligação com o valor -2, ou seja, o funcionário deve ser mantido na lista de funcionários, porém não será apontado por nenhum outro funcionário através do campo ligação e o seu próprio campo ligação irá conter o valor -2.
O programa deve apresentar um relatório contendo: 
As matrizes A e B originais;
Para cada operação:
- o tipo de operação realizada e os dados da operação; 
- a forma final das matrizes A e B. 

A implementação das matrizes A e B deve ser feita através de listas (TObjectList) para todas as operações internas do sistema (operações de admissão, demissão, mudança de departamento e relatórios). Mais especificamente, devem existir duas listas: uma para a matriz A e outra para a matriz B. Os elementos da matriz B não podem conter listas internas de funcionários, apenas o indicativo do número do departamento e a linha do primeiro funcionário daquele departamento .
Também deve ser criada uma maneira de persistir esses dados em arquivos no disco, com um arquivo para representar a matriz A e outro para a matriz B. O formato de gravação dos dados em arquivo é de livre escolha.
Durante a inicialização do aplicativo, os dados presentes nos arquivos devem ser lidos e armazenados nas listas de dados internas do sistema.
