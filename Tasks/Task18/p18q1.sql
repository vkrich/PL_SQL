/*delete from messages
where text is null;
commit;*/
declare 
  v_mid messages.mesid%TYPE:=0;
BEGIN
  for i in 1..10 loop
    v_mid:=v_mid+1;
      if v_mid!=6 AND v_mid!=8 then
         insert into messages (mesid)
         values (v_mid);
      end if;
  end loop;    
END;
/
commit;
select * from messages;
    
