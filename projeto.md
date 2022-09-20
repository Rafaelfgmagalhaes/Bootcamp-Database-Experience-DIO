## **Banco de dados relacional**
 
Um banco de dados relacional é um tipo de banco de dados que armazena e fornece acesso a pontos de dados relacionados entre si. Bancos de dados relacionais são baseados no modelo relacional, uma maneira intuitiva e direta de representar dados em tabelas. Em um banco de dados relacional, cada linha na tabela é um registro com uma ID exclusiva chamada chave. As colunas da tabela contêm atributos dos dados e cada registro geralmente tem um valor para cada atributo, facilitando o estabelecimento das relações entre os pontos de dados.  
O modelo relacional significa que as estruturas de dados lógicas: tabelas de dados, exibições e índices - são separadas das estruturas de armazenamento físico. Essa separação significa que os administradores de banco de dados podem gerenciar o armazenamento de dados físicos sem afetar o acesso a esses dados como uma estrutura lógica. Por exemplo, a renomeação de um arquivo de banco de dados não renomeia as tabelas armazenadas nele.  
Para garantir que os dados sejam sempre precisos e acessíveis, os bancos de dados relacionais seguem determinadas regras de integridade. Por exemplo, uma regra de integridade pode especificar que linhas duplicadas não são permitidas em uma tabela para eliminar o potencial de informações errôneas que entram no banco de dados.  

##

## **Banco de dados não relacionais**

Os bancos de dados NoSQL são amplamente usados em aplicativos da web em tempo real e big data, porque suas principais vantagens são alta escalabilidade e alta disponibilidade. Os bancos de dados NoSQL também são a escolha preferida dos desenvolvedores, pois eles naturalmente aceitam um paradigma de desenvolvimento ágil, adaptando-se rapidamente aos requisitos em constante mudança. Os bancos de dados NoSQL permitem que os dados sejam armazenados de maneiras mais intuitivas e fáceis de entender, ou mais próximas da maneira como os dados são usados pelos aplicativos - com menos transformações necessárias ao armazenar ou recuperar usando APIs no estilo NoSQL. Além disso, os bancos de dados NoSQL podem aproveitar ao máximo a nuvem para oferecer tempo de inatividade zero.  

##  

## **SQL versus NoSQL**
 

Os bancos de dados SQL são relacionais, enquanto os bancos de dados NoSQL são não relacionais. O sistema de gerenciamento de banco de dados relacional (RDBMS) é a base para a linguagem de consulta estruturada (SQL), que permite aos usuários acessar e manipular dados em tabelas altamente estruturadas. Este é o modelo básico para sistemas de banco de dados como MS SQL Server, IBM DB2, Oracle e MySQL. Mas com bancos de dados NoSQL, a sintaxe de acesso a dados pode ser diferente de banco de dados para banco de dados.  
Os dados em um banco relacional são armazenados em objetos que são chamados de tabelas. Uma tabela é uma coleção de entradas de dados relacionadas e consiste em colunas e linhas. Esses bancos de dados requerem a definição do esquema com antecedência, ou seja, todas as colunas e seus tipos de dados associados devem ser conhecidos de antemão para que os aplicativos possam gravar dados no banco de dados. Eles também armazenam informações vinculando várias tabelas por meio do uso de chaves, criando assim um relacionamento entre várias tabelas. No caso mais simples, uma chave é usada para recuperar uma linha específica para que ela possa ser examinada ou modificada.  
Por outro lado, em bancos de dados NoSQL, os dados podem ser armazenados sem definir o esquema com antecedência o que significa que você tem a capacidade de se mover e iterar rapidamente, definindo o modelo de dados à medida que avança. Isso pode ser adequado para requisitos específicos de negócios, seja baseado em gráficos, orientado a colunas, orientado a documentos ou como um armazenamento de chave-valor.  
Até muito recentemente, os bancos de dados relacionais eram os modelos mais usados. Eles ainda são extremamente usados em muitas empresas; no entanto, a variedade, velocidade e volume de dados que estão sendo acessados hoje às vezes requerem um banco de dados muito diferente para complementar o banco de dados relacional. Isso desencadeou a adoção em algumas áreas dos bancos de dados NoSQL também chamados de bancos de dados não relacionais. Devido à sua capacidade de escalar horizontalmente e rapidamente, os bancos de dados não relacionais podem lidar com alto tráfego, o que também os torna altamente adaptáveis.  

##  

## **Quando escolher um banco de dados NoSQL?**


Com empresas e organizações precisando inovar rapidamente, ser capaz de se manter ágil e continuar operando em qualquer escala os bancos de dados NoSQL oferecem esquemas flexíveis e também suportam uma variedade de modelos de dados que são ideais para a construção de aplicativos que requerem grandes volumes de dados e baixa latência ou tempos de resposta—por exemplo, jogos online e aplicativos da web de ecommerce.  

## **Quando não escolher um banco de dados NoSQL?**
  

Os bancos de dados NoSQL normalmente dependem de dados desnormalizados, suportando os tipos de aplicativos que usam menos tabelas (ou contêineres) e cujos relacionamentos de dados não são modelados usando referências, mas sim como registros (ou documentos) incorporados. Muitos aplicativos de negócios de back-office clássicos em finanças, contabilidade e planejamento de recursos corporativos contam com dados altamente normalizados para evitar anomalias de dados, bem como a duplicação de dados. Esses são os tipos comuns de aplicações que não são adequadas para um Banco de Dados NoSQL. 





