-- 1. Escribe una consulta que recupere los Vuelos (flights) y su identificador que figuren con status On Time.--

select * from flights
where status = 'On Time'
order by flight_id

-- 2. Escribe una consulta que extraiga todas las columnas de la tabla bookings y refleje todas las reservas que han supuesto una cantidad total mayor a 1.000.000 (Unidades monetarias).--

select * from bookings
where total_amount > 1000000

-- 3. Escribe una consulta que extraiga todas las columnas de los datos de los modelos de aviones disponibles (aircraft_data). Puede que os aparezca en alguna actualización como "aircrafts_data", revisad las tablas y elegid la que corresponda.--

select * from aircrafts_data

-- 4. Con el resultado anterior visualizado previamente, escribe una consulta que extraiga los identificadores de vuelo que han volado con un Boeing 737. (Código Modelo Avión = 733)--

SELECT 
    f.flight_id
    f.flight_no
    a.model
FROM flights f
JOIN aircrafts_data a ON f.aircraft_code = a.aircraft_code
WHERE a.aircraft_code = '733'

-- 5. Escribe una consulta que te muestre la información detallada de los tickets que han comprado las personas que se llaman Irina.--

SELECT 
    t.ticket_no
    t.passenger_name
    tf.flight_id
    tf.fare_conditions
    tf.amount
FROM tickets t
JOIN ticket_flights tf ON t.ticket_no = tf.ticket_no
WHERE t.passenger_name LIKE 'IRINA%'

--Opcionales (las iba a hacer igual jajajaja)--

--6. Mostrar las ciudades con más de un aeropuerto.--

SELECT 
    city
    COUNT(airport_name) AS total_aeropuertos
FROM airports_data
GROUP BY city
HAVING COUNT(airport_name) > 1




