use erpDM
go

create table dimChofer(
	idChofer int primary key not null,
	nombre varchar(255)
)
go

select * from erp.db_erp_sige.chofer
select * from dimChofer
go


create table dimVehiculo(
	idVehiculo int primary key not null,
	nombre varchar(255) not null,
	placa varchar(255) not null
)
go
select * from erp.db_erp_sige.vehiculo
select * from dbo.dimVehiculo

create table dimEstadoPedido(
	idEstadoPedido int primary key not null,
	nombre varchar(255) not null
)
go

select 
	pedido.estado, pedido.fecha, pedido.cliente, estado_pedido.codigo 
	from erp.db_erp_sige.pedido inner join erp.db_erp_sige.estado_pedido 
	on pedido.estado=estado_pedido.codigo
	where pedido.fecha_anulado is null