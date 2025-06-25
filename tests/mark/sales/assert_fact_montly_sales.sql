--Este test pasa si esta consulta devuelve cero filas
--seleciona cualquier registro de la tabla de echos donde las metricas clave sen negativas

select 
ddate,
id_salesperson,
id_carmake,
totalsale,
totalcom
from {{ref("fct_montly_sales")}}
where totalsale < 0 or totalcom < 0