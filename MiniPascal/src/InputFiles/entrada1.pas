PROGRAM EJER37;
 VAR num1,num2:INTEGER=10;
 VAR num3:INTEGER;
 {--------------Records------------------}
 VAR books = RECORD
   title:INTEGER;
   bookID:boolean;
 END;
{---------------Funcion------------------}
{-----------------Procedure---------------}
procedure foo;
VAR result3:INTEGER;
begin
   write('Estamos dentro del procedimiento',variable);
end;
{-----------------------------------------}
 FUNCTION max(num1, num2:INTEGER):INTEGER;
  VAR result1:INTEGER;
  VAR result2:INTEGER;
  BEGIN
   IF (4 > 5) THEN
   BEGIN
      result := 15;
      result := 15;
   END
   ELSE
      result := 10;
   max := 11;
  END;
{-----------------------------------------}

 BEGIN
  num1:=num2;
  num1:=num2+10;
  num1:=num2+num1;
  num1:=10;
  WHILE num1 > (1>5) DO
   BEGIN
    WRITE('Esta es la iteracion', num1);
    num1:=2;
   END;
END.