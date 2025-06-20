/**select * from db_erp_sige.dependiente_empleado
select * from db_erp_sige.detalle_registro_hora_extra
select * from db_erp_sige.condicion_empleado
select * from dbo.turno
select * from db_erp_sige.turno_pedido
select * from db_erp_sige.unidad_de_negocio
select * from db_erp_sige.cargo
select * from db_erp_sige.estado_empleado
select * from dbo.empleados
**/
use erp

insert into empleados (codigo, nombre, fecha, cargo, unidad_de_negocio, estado) values
(1, 'Darnell', '2015/10/08', 1, 2, 1),
(2, 'Filmer', '2015/10/06', 1, 1, 1),
(3, 'Tarah', '2015/10/11', 1, 1, 1),
(4, 'Melisent', '2015/10/08', 1, 3, 1),
(5, 'Hilde', '2015/10/05', 1, 2, 1),
(6, 'Towny', '2015/10/09', 1, 3, 1),
(7, 'Guido', '2015/10/06', 1, 5, 1),
(8, 'Nessy', '2015/10/05', 1, 1, 1),
(9, 'Dom', '2015/10/05', 1, 1, 1),
(10, 'Althea', '2015/10/07', 1, 4, 1),
(11, 'Robby', '2015/10/06', 1, 1, 1),
(12, 'Jenni', '2015/10/08', 1, 2, 1),
(13, 'Emanuel', '2015/10/07', 1, 2, 1),
(14, 'Hendrika', '2015/10/07', 1, 2, 1),
(15, 'Penelope', '2015/10/11', 1, 5, 1),
(16, 'Sherlocke', '2015/10/08', 1, 2, 1),
(17, 'Rusty', '2015/10/10', 1, 5, 1),
(18, 'Joaquin', '2015/10/10', 1, 3, 1),
(19, 'Thorpe', '2015/10/05', 1, 4, 1),
(20, 'Etta', '2015/10/09', 1, 2, 1);
go

insert into turno(codigo, nombre, hora_inicio, hora_final, minutos_tolerancia) values
(1, 'turno uno', '08:00', '12:00', 15),
(2, 'turno dos', '14:00', '20:00', 15);
select * from turno

insert into asignacion_tuno (codigo, empleado, fecha_asignacion, turno) values
(1, 1, '2015/01/01', 1),
(2, 2, '2015/01/01', 1),
(3, 3, '2015/01/01', 1),
(4, 4, '2015/01/01', 1),
(5, 5, '2015/01/01', 1),
(6, 6, '2015/01/01', 2);
go

insert into registros_marcacion(codigo, empleado, fecha, hora_entrada_marcada, hora_salida_marcada) values
(1,1, '2015/01/01', '08:30', '12:00'),
(2,1, '2015/01/02', '08:30', '12:00'),
(3,6, '2015/01/01', '15:00', '20:00');
go
select * from registros_marcacion
go

insert into vacaciones_feriados(codigo, empleado, tipo_evento, fecha_inicio, fecha_fin, aprobado) values
(4, 5, 'Vacaciones','2015/03/25', '2015/03/30', 1);
go