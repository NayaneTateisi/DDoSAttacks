# DDoSAttacks
Detecting DDoS attacks using a multilayer Perceptron classifier 


Esse trabalho propõe utilizar uma rede perceptron multicamadas para detecção de eventos DDoS, usando apenas as informações de fluxo de dados da rede, sem interferir nas diretrizes dos sistemas. <tr>

<p>Para análise foi utilizado conjunto de dados CICIDS2017 disponibilizado pelo Information Security Center of Excellence da Universidade de New Brunswicke. O conjunto de dados é rotulado com mais de 80 entradas de tráfego de rede extraídos de fluxos benignos e invasões usando o software CICFlowMeter. A forma como o dataset foi criado o qualifica para trabalhar em cenários de ataque diversos, como: DoS, DDoS, Brute Force, XSS, SQL Injection, Infiltration, Port scan e Botnet. Nesta análise foi considerado as atividades maliciosas de DDoS do arquivo de captura da sexta-feira, 7 de julho de 2017, que consiste em ataques de DDoS e uma ampla variedade de tráfego de rede legítimo (normal). O conjunto resultante contém 8h de tráfego de rede com um tamanho total de 8,3 GB.
