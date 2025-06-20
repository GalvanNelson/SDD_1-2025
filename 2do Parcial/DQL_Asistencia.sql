use erp

SELECT
    E.nombre AS NombreEmpleado,
    RM.fecha AS FechaMarcacion,
    RM.hora_entrada_marcada AS HoraMarcacionEntrada,
    T.hora_inicio AS HoraEntradaDefinidaTurno,
    T.minutos_tolerancia AS MinutosToleranciaAsignada,
    -- Cálculo de los minutos de retraso
    CASE
        -- Si la hora de entrada marcada es NULL, no aplica retraso para este cálculo
        WHEN RM.hora_entrada_marcada IS NULL THEN NULL
        -- Si no se pudo obtener la hora de inicio del turno o la tolerancia (porque no hubo JOIN válido), no se puede calcular
        WHEN T.hora_inicio IS NULL OR T.minutos_tolerancia IS NULL THEN NULL
        -- Si la diferencia entre la hora definida y la marcada es menor o igual a la tolerancia, el retraso es 0
        WHEN DATEDIFF(minute, T.hora_inicio, RM.hora_entrada_marcada) <= T.minutos_tolerancia THEN 0
        -- Si la marcación es después de la hora definida más la tolerancia, calculamos el retraso real
        ELSE DATEDIFF(minute, DATEADD(minute, T.minutos_tolerancia, T.hora_inicio), RM.hora_entrada_marcada)
    END AS MinutosRetrasoCalculados
FROM
    dbo.registros_marcacion AS RM
INNER JOIN -- Mantener INNER JOIN con Empleados, ya que cada marcación DEBE tener un empleado.
    dbo.empleados AS E ON RM.empleado = E.codigo
LEFT JOIN -- Cambiado a LEFT JOIN: Incluye todas las marcaciones, incluso si no hay asignación de turno para esa fecha/empleado.
    dbo.asignacion_tuno AS AT ON RM.empleado = AT.empleado AND RM.fecha = AT.fecha_asignacion
LEFT JOIN -- Cambiado a LEFT JOIN: Incluye todas las asignaciones (y sus marcaciones), incluso si el turno no se encuentra.
    dbo.turno AS T ON AT.turno = T.codigo
WHERE
    RM.hora_entrada_marcada IS NOT NULL -- Mantenemos este filtro para solo mostrar marcaciones de entrada válidas.
ORDER BY
    E.nombre,
    RM.fecha;

select datepart(MONTH, fecha) as mes, datepart(DAY, fecha) as dia from registros_marcacion
/*SELECT
    E.nombre,
    MA.fecha,
    TL.hora_inicio,
    MA.hora_entrada_marcada,
    TL.minutos_tolerancia,
    -- Calculamos los minutos de retraso
    CASE
        -- Si no hay hora de entrada marcada, el retraso es 0 (o puedes considerar NULL, dependiendo de tu lógica)
        WHEN MA.hora_entrada_marcada IS NULL THEN 0
        -- Si la marcación es antes o dentro de la tolerancia de la hora definida
        WHEN DATEDIFF(minute, TL.hora_inicio, MA.hora_entrada_marcada) <= TL.minutos_tolerancia THEN 0
        -- Si la marcación está después de la tolerancia, calculamos el retraso real
        ELSE DATEDIFF(minute, DATEADD(minute, TL.minutos_tolerancia, TL.hora_inicio), MA.hora_entrada_marcada)
    END AS MinutosRetrasoCalculados
FROM
    dbo.registros_marcacion AS MA
inner JOIN
    dbo.empleados AS E ON MA.empleado = E.codigo
LEFT JOIN -- Usamos LEFT JOIN para incluir todas las marcaciones incluso si no tienen una asignación de turno
    dbo.asignacion_tuno AS AT ON MA.empleado= AT.ID_Empleado AND MA.Fecha_Marcacion = AT.Fecha_Asignacion
LEFT JOIN -- Usamos LEFT JOIN para incluir marcaciones incluso si el turno asignado no se encuentra
    dbo.Turnos_Laborales AS TL ON AT.ID_Turno = TL.ID_Turno
WHERE
    MA.hora_entrada_marcada IS NOT NULL -- Solo consideramos registros que tienen una hora de entrada marcada
ORDER BY
    E.nombre, MA.fecha;	
go*/

select * from registros_marcacion