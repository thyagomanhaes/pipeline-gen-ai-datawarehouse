with ranking_geral as (
    select
	    nome_atleta 
	    , SUM(pontuacao) as pontuacao_total
	    , COUNT(pontuacao) as qtd_participacoes
    from {{ ref('int_quadrangular') }}
    group by nome_atleta
    order by pontuacao_total desc 
)

select *
from ranking_geral