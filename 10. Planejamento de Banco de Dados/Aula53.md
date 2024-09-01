## A importância do BD design

Aplicações que tem o desenho do banco já iniciam com uma documentação e ainda uma organização prévia, que dita as regras do sistema e como ele funciona.

O relacionamento entre entidades também é previsto, além de erros poderem ser resolvidos antes de acontecerem no código.

## Análise de requisitos
É o planejamento e definição do sistema. Como o sistema deve funcionar é apresentado em uma conversa com quem precisa do sistema.

Aqui também podem ser relatadas dificuldades técnicase criam-se alternativas para possiveis problemas.

## Normalização

É dividida em diversos níveis, algumas das premissas são:
1. Colocar chave primaria na tabela;
2. 1FN - Colunas guardam um único valor(atomicidade);
3. 2FN - Colunas que não pertecem ao tópico central da tabela devem virar outra tabela;
4. 3FN - Deixar no banco de dados apenas valores que não são dependentes de outros;

## Diagrama de Entidades Relacionais
É um quadro onde se definem as tabelas e as relações entre si deixando o banco de dados visual a todos da equipe.

Utilizado também para dar nome as tabelas e colunas além dos tipos de dados.