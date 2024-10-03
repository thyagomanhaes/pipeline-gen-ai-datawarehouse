select
	nome as nome_atleta
	, cast(pontuacao as integer) as pontuacao
	, to_date(data, 'DD/MM/YYYY') as data_evento
	, posicao_final
	, time as nome_time
	, etapa
from {{ ref('stg_quadrangular') }}