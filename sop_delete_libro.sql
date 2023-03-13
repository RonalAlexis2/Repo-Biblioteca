CREATE PROCEDURE SP_DELETE_LIBRO

(
@id_libro int
)
as
begin

DELETE FROM libro WHERE id_libro= @id_libro


end

exec SP_DELETE_LIBRO 2

SELECt * FROM libro;