select to_char(o.created, 'DD/MM/YYYY') as Data_Venda , 
	upper(f.hair_type)  as Tipo_Cabelo, 
	case when f.age between min(f.age) and 25 then '0 - 25'
		 when f.age between 26 and 35 then '26 - 35'
		 when f.age between 36 and 45 then '36 - 45'
		 when f.age between 46 and 55 then '46 - 55'
		 when f.age between 56 and 65 then '56 - 65'
		 when f.age > 65 then '65+'
		 end as "IDADE",
	o.value as Valor 
				from orders o 

inner join forms f
on f.id = o.form_id
group by f.hair_type, o.value, age, data_venda