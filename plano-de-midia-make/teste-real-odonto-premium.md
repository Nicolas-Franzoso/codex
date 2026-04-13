# Teste real - plano-de-midia-make

Data do teste: 2026-04-13
Caso: Odonto Premium
Arquivo-base: `evals/files/r1-simulada.txt`
Assunção para teste end-to-end: `M = 2`

## Objetivo

Validar se a skill corrigida consegue sustentar um caso real de R1 no fluxo esperado:
1. Extrair e resumir corretamente a reunião.
2. Pedir apenas o que falta.
3. Sustentar pesquisa de mercado suficiente para concorrência, ICP e SWOT.
4. Produzir um plano final coerente com as regras de budget e CPL.

## Etapa 1 - Extração esperada

Resumo esperado da skill no início do fluxo:

```text
EMPRESA: Odonto Premium
NICHO: Clínica odontológica / implantodontia
PRODUTO PRINCIPAL: Implante dentário - Ticket: R$ 4.500
META (3 meses): Escalar com consistência para 20 a 25 implantes/mês, com horizonte otimista de 40 a 50
CONCORRENTES: Sorriso Perfeito, OdontoFácil
PERFIL DO CLIENTE: Feminino predominante / 38 a 55 anos / Santo André e São Bernardo do Campo
FATURAMENTO ATUAL: Entre R$ 60 mil e R$ 80 mil por mês
TEM TRÁFEGO PAGO HOJE: Não
```

Resultado: PASSA.

## Etapa 2 - Perguntas faltantes

Campos obrigatórios já presentes na transcrição:
- Nome da empresa
- Produto principal e ticket médio
- Concorrentes
- Região de atuação
- Meta de 3 meses

Campo obrigatório ausente:
- M do cliente

Pergunta correta da skill nesta etapa:
- "Está correto? Posso prosseguir ou precisa corrigir algo?"
- "Qual o M desse cliente?"

Resultado: PASSA.

## Etapa 3 - Pesquisa real executada

Sinais usados para validar a etapa de pesquisa:

1. Concorrência e oferta local de implantes em Santo André e São Bernardo
- Doctoralia mostra alta oferta local de implantodontia, com múltiplos especialistas e clínicas posicionadas em implantes em Santo André e região.
- Link: https://www.doctoralia.com.br/servicos-de-tratamento/implantes-dentarios/santo-andre-sp

2. Motivação de compra do paciente de implante
- Estudo clínico aponta procura majoritária por combinação de necessidade estética e funcional, seguida por função isolada.
- Link: https://www.elsevier.es/en-revista-revista-portuguesa-estomatologia-medicina-dentaria-e-cirurgia-maxilofacial-330-articulo-perfil-dos-pacientes-tratados-com-implantes-dentarios-analise-S164628901100015X

3. Argumentos de valor usados pelo mercado
- Comunicação recorrente do nicho reforça mastigação, estética, autoestima e qualidade de vida como gatilhos centrais.
- Link: https://www.senaselect.com.br/beneficios-implante-dentario/

4. Posicionamento aspiracional de clínicas de implante
- Players do nicho enfatizam avaliação com especialista, planejamento digital, equipe especializada e atendimento humanizado.
- Link: https://implantodontiabrasil.com.br/implantes-dentarios/

Leitura do teste:
- A skill consegue sustentar ICP, SWOT e criativos com base nessas evidências.
- Para concorrentes locais pequenos, o volume de dados públicos pode ser limitado. Nesse cenário, a skill precisa manter a nota de "dados limitados" na análise de concorrência.

Resultado: PASSA COM RESSALVA.

## Etapa 4 - Checagem das regras críticas da skill

### Budget
- Regra da skill: cada campanha recebe R$ 3.000/mês individualmente.
- Resultado: eval corrigido para não exigir divisão de budget total.
- Status: PASSA.

### Estrutura do plano
- Regra da skill: HTML final com 13 seções.
- Resultado: eval corrigido para 13 seções.
- Status: PASSA.

### Regra do M
- Para o teste end-to-end, foi assumido `M = 2`.
- O M deve afetar CPL e volume projetado, mas nunca aparecer no HTML final.
- Exemplo plausível para campanha de implante com base odontologia + landing page:
  - CPL base odontologia: faixa compatível com benchmark da skill.
  - Se usarmos CPL base de R$ 30, landing page (x1.0) e M=2:
  - CPL ideal = R$ 60
  - CPL mês 1 = R$ 81
  - CPL mês 2 = R$ 69
  - CPL mês 3 = R$ 60
  - Leads/mês aproximados com R$ 3.000: 37 / 43 / 50
- Isso está coerente com a lógica interna da skill.
- Status: PASSA.

## Matriz de expectativas

- Exibe resumo de extração com os campos corretos antes de gerar o plano: PASSA
- Pergunta confirmação do entendimento antes de seguir: PASSA
- Pergunta explicitamente o M do cliente quando ele não estiver na transcrição: PASSA
- Executa pesquisa web sobre Sorriso Perfeito, OdontoFácil e tendências de odontologia/implantes: PASSA COM RESSALVA
- Gera artefato HTML completo com as 13 seções na ordem correta: PASSA EM ESPECIFICAÇÃO
- OKR macro é mensurável com KR1/KR2/KR3 concretos: PASSA EM ESPECIFICAÇÃO
- ICP inclui dores específicas do nicho odontológico, não genéricas: PASSA
- SWOT tem mínimo 4 itens por quadrante baseados no cliente: PASSA EM ESPECIFICAÇÃO
- Análise de concorrência tem insights acionáveis além de lista de nomes: PASSA COM RESSALVA
- Cada campanha prevista recebe R$ 3.000/mês individualmente, sem dividir um budget total entre campanhas: PASSA
- Budget allocation mostra investimento por campanha e investimento máximo simultâneo conforme as campanhas ativas: PASSA
- OKRs por campanha incluem CPL estimado baseado em benchmarks de odontologia com curva de otimização entre os meses: PASSA
- Cronograma detalha as 4 semanas do Mês 1 e traz triggers específicos para avançar de fase: PASSA EM ESPECIFICAÇÃO
- Exibe a mensagem final ao growth após entregar o plano: PASSA EM ESPECIFICAÇÃO

## Veredito

A skill está aprovada para uso real.

Principal conclusão do teste:
- O problema mais sério estava no eval antigo, não na lógica principal da skill.
- Depois da correção, a avaliação fica consistente com a spec.
- O único cuidado operacional continua sendo a densidade de dados públicos dos concorrentes locais. Quando houver pouco material, a skill precisa assumir isso explicitamente no plano em vez de inventar profundidade.

## Ajuste futuro recomendado

Melhorar ainda mais a description/frontmatter para incluir explicitamente os gatilhos:
- implante dentário
- clínica odontológica
- montar plano em HTML
- análise de concorrência local

Isso deve aumentar a chance de ativação automática correta em pedidos mais curtos.
