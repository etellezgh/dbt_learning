{%macro STATION_OF_YEAR(d)%}

CASE WHEN MONTH(TO_TIMESTAMP({{d}})) in (12,1,2) THEN 'WINTER' WHEN MONTH(TO_TIMESTAMP({{d}})) in (3,4,5) THEN 'SPRING' WHEN MONTH(TO_TIMESTAMP({{d}})) in(6,7,80) THEN 'SUMMER' ELSE 'AUTUM' END 


{%endmacro%}

{%macro DAY_TYPE(d)%}

CASE WHEN DAYNAME(TO_TIMESTAMP({{d}})) in('Sat','Sun') then 'WEEKEND' else 'BUSINESSDAY' END 


{%endmacro%}