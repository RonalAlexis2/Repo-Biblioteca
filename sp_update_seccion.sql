CREATE PROC SP_UPDATE_SECCION
(
@id_seccion int,
@name_seccion varchar (250)
)
as
begin

UPDATE seccion
SET name_seccion = @name_seccion
WHERE id_seccion= @id_seccion;


end

exec SP_UPDATE_SECCION 3 , 'ficcion'

select *from seccion
