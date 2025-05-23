use erp
go
--datos cliente
select * from db_erp_sige.cliente
select * from db_erp_sige.tipo_cliente
select * from db_erp_sige.estado_cliente

--fechas de pago de credito del cliente
select * from db_erp_sige.gestion_de_cobro
select * from db_erp_sige.factura
select * from db_erp_sige.plazo
select * from db_erp_sige.tipo_de_ingreso

--datos del credito con el cliente
select * from db_erp_sige.credito_cliente
select * from db_erp_sige.tipo_garantia
select * from db_erp_sige.tipo_credito

--perdonazo de credito
select * from db_erp_sige.reconciliacion_interna_cliente

--ascesor de credito
select * from db_erp_sige.usuario
select * from db_erp_sige.avance_de_cliente
select * from db_erp_sige.detalle_avance_de_cliente

--central donde el cliente y ascesor relacionan el credito
select * from db_erp_sige.unidad_de_negocio