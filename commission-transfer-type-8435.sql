ALTER TABLE COMMISSIONS
    ADD TRANSFER_TYPE VARCHAR2(250) NULL;
 
update commissions
set transfer_type = 'p2p'
where (source like 'UZCARD%' and destination like 'UZCARD%')
   OR (source like 'UZCARD%' and destination like 'HUMO%')
   OR (source like 'UZCARD%' and destination like 'VISASUM%')
   OR (source like 'HUMO%' and destination like 'UZCARD%')
   OR (source like 'HUMO%' and destination like 'HUMO%')
   OR (source like 'HUMO%' and destination like 'VISASUM%')
   OR (source like 'VISASUM%' and destination like 'UZCARD%')
   OR (source like 'VISASUM%' and destination like 'HUMO%')
   OR (source like 'VISASUM%' and destination like 'VISASUM%');
