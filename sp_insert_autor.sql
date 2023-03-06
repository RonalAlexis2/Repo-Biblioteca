CREATE PROC SP_INSERT_AUTOR
(
@name_autor varchar(50)
)
as
begin

insert into autor(name_autor)
values (@name_autor)

end

exec SP_INSERT_AUTOR 'alexis'


select * from autor

delete from autor 


