use erp
go
select unidad_entrada, unidad_salida, unidad.codigo from db_erp_sige.articulo, db_erp_sige.unidad order by articulo.unidad_entrada
select codigo, descripcion from  db_erp_sige.unidad order by codigo

