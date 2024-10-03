--1.EMPLOYEES cÉ™dvÉ™lindÉ™ É™mÉ™kdaÅŸlarÄ±n employee_id, first_name, last_name, email vÉ™ salary mÉ™lumatlarÄ±nÄ± ekrana Ã§Ä±xarÄ±n. 

select first_name,
       last_name,
       email,
       salary 
  from employees;
  
--  first_name, last_name sÃ¼tunlarÄ±nÄ±n dÉ™yÉ™rlÉ™ri bÃ¶yÃ¼k hÉ™rflÉ™rlÉ™ email sÃ¼tunun dÉ™yÉ™rlÉ™ri isÉ™ ilk simvol bÃ¶yÃ¼k qalan 
--  simvollar isÉ™ balaca hÉ™rflÉ™rlÉ™ É™ks olunsun. 

select 
upper (first_name) as first_name,
upper (last_name) as last_name,
initcap (email) as email,
       salary
  from employees;

--2.COUNTRIES cÉ™dvÉ™linin bÃ¼tÃ¼n sÃ¼tunlarÄ±nÄ±n mÉ™lumatlarÄ±nÄ± ekrana Ã§Ä±xarÄ±n. country_id sÃ¼tunun dÉ™yÉ™rlÉ™ri balaca hÉ™rflÉ™rlÉ™ É™ks 
--  olunsun. 
select country_id,
      country_name,
      region_id,
lower (country_id) as country_id_kicik
  from countries;
  
select *
  from countries;
--3.EMPLOYEES cÉ™dvÉ™lindÉ™ É™mÉ™kdaÅŸlarÄ±n employee_id, first_name, last_name, email vÉ™ salary mÉ™lumatlarÄ±nÄ± ekrana Ã§Ä±xarÄ±n. 
--  first_name vÉ™ last_name sÃ¼tunlarÄ±nÄ±n dÉ™yÉ™rlÉ™ri aralarÄ±nda bir boÅŸluq(probel) ilÉ™ birlÉ™ÅŸdirilÉ™rÉ™k É™ks olunsun.


select employee_id,
       first_name,
       last_name,
       first_name || ' ' || last_name as ad_soyad,
       email,
       salary
  from employees;
  
  
--4.EMPLOYEES cÉ™dvÉ™lindÉ™ first_name, last_name, email, salary vÉ™ phone_number sÃ¼tunlarÄ±nÄ±n birlikdÉ™ simvollarÄ±nÄ±n sayÄ± 
--  40 -dan bÃ¶yÃ¼k olan É™mÉ™kdaÅŸlarÄ±n mÉ™lumatlarÄ±nÄ± ekrana Ã§Ä±xarÄ±n.  

select first_name,  last_name,  email, salary,phone_number,
length (first_name || last_name || email || salary || phone_number) as len_40
  from employees
  where
  length (first_name || last_name || email || salary || phone_number) > 40;
  
  
     
--5.EMPLOYEES cÉ™dvÉ™lindÉ™ first_name sÃ¼tununun dÉ™yÉ™rinin uzunluÄŸunu 40 simvol olmaqla saÄŸ tÉ™rÉ™fÉ™ '*', last_name sÃ¼tununun 
--  dÉ™yÉ™rinin uzunluÄŸunu 30 simvol olmaqla sol tÉ™rÉ™fÉ™ '*' simvollarÄ±nÄ± É™lavÉ™ edin.

select first_name,
  rpad (first_name, 40, '*'),
       last_name,
  lpad (last_name, 30, '*')
  from employees;
   
--6.EMPLOYEES cÉ™dvÉ™lindÉ™ phone_number sÃ¼tununun dÉ™yÉ™rlÉ™rinin iÃ§É™risindÉ™ olan '.' -i '-' -ilÉ™ É™vÉ™z edin. 

select phone_number,
replace (phone_number, '.', '-')
  from employees;

--7.EMPLOYEES cÉ™dvÉ™lindÉ™ job_id sÃ¼tununun dÉ™yÉ™rlÉ™rinin iÃ§É™risindÉ™ ilk Ã¼Ã§ simvolu nÉ™zÉ™rÉ™ almadan digÉ™r qalan hissÉ™si 
--  'CLERK' vÉ™ 'MAN' dÉ™yÉ™rlÉ™rinÉ™ malik olan mÉ™lumatlarÄ± ekrana Ã§Ä±xaran sorÄŸu yazÄ±n. 

select job_id
  from employees
where lower (job_id) like '___clerk' OR lower( job_id) like '___man' ;
 
--8.EMPLOYEES cÉ™dvÉ™lindÉ™ phone_number sÃ¼tununun É™vÉ™lindÉ™ vÉ™ sonunda olan 5,6 vÉ™ 9 rÉ™qÉ™mlÉ™rini kÉ™sÉ™rÉ™k kÉ™narlaÅŸdÄ±rÄ±n(sorÄŸuda 
--   Ã¼Ã§ sÃ¼tun olacaq).  

SELECT /*PHONE_NUMBER,*/
TRIM (BOTH 5 FROM phone_number) AS FIVE,
TRIM (BOTH 6 FROM phone_number) AS SIX,
TRIM (BOTH 9 FROM phone_number) AS NINE
/*SUBSTR (phone_number,1, 1) ,
SUBSTR (phone_number,-1, 1) */
  FROM employees;
 /*WHERE 
SUBSTR (phone_number,1, 1) IN (5,6,9) AND 
SUBSTR (phone_number,-1, 1) IN (5,6,9)*/
;


select salary,
power (salary, '3')
  from employees;
      
--9.EMPLOYEES cÉ™dvÉ™lindÉ™ salary sÃ¼tunundakÄ± dÉ™yÉ™rlÉ™ri 3 -cÃ¼ dÉ™rÉ™cÉ™dÉ™n qÃ¼vvÉ™tÉ™ yÃ¼ksÉ™ldin. 

select salary,
power (salary, 3)
  from employees;
      

--10.EMPLOYEES cÉ™dvÉ™lindÉ™ salary sÃ¼tunundakÄ± dÉ™yÉ™rlÉ™rin kvadrat kÃ¶kÃ¼nÃ¼ tapÄ±n. 
SELECT salary ,
  SQRT (salary) 
  FROM employees;

    
--11.Serverin cari tarix vÉ™ vaxtÄ±nÄ± ekrana Ã§Ä±xardÄ±n.

select sysdate 
  from dual;


--12.EMPLOYEES cÉ™dvÉ™lindÉ™ hire_date sÃ¼tunu Ã¼Ã§Ã¼n aÅŸaÄŸÄ±dakÄ± É™mÉ™liyyatlarÄ± yerinÉ™ yetirin
--   a) hire_date sÃ¼tunundakÄ± dÉ™yÉ™rlÉ™rin 45 gÃ¼n É™vvÉ™l vÉ™ 45 gÃ¼n sonrakÄ± tarixlÉ™ri ekrana Ã§Ä±xardÄ±n

select hire_date,
       hire_date+45 as sonra,
       hire_date-45 as evvel
  from employees;
  

--   b) cari tarix ilÉ™ hire_date sÃ¼tunundakÄ± tarixlÉ™r arasÄ±ndakÄ± aylarÄ± illÉ™ gÃ¶stÉ™rÉ™n sorÄŸu yazÄ±n. 

select hire_date,
       sysdate,
       DATEDIFF (YEAR , SYSDATE, HIRE_DATE )
  from employees;
  
SELECT MONTHS_BETWEEN (SYSDATE, HIRE_DATE) FROM EMPLOYEES;
SELECT 
  
SELECT DATEDIFF (MONTH, SYSDATE, HIRE_DATE) FROM EMPLOYEES;
--   c) hire_date sÃ¼tunundakÄ± dÉ™yÉ™rlÉ™rin Ã¼zÉ™rinÉ™ 15 ay É™lavÉ™ edÉ™rÉ™k alÄ±nan tarix dÉ™yÉ™rinin Ã¼zÉ™rinÉ™ 20 gÃ¼n É™lavÉ™ edÉ™rÉ™k 
--      alÄ±nan dÉ™yÉ™ri ekrana Ã§Ä±xardÄ±n.

select hire_date,
       add_months (hire_date,45)
  from employees;
  
  
select hire_date,
       hire_date+20
  from employees;
--   d) SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY gÃ¼nlÉ™rinin hansÄ± tarixÉ™ dÃ¼ÅŸÉ™cÉ™yini mÃ¼É™yyÉ™n edin.     
--   e) hire_date sÃ¼tununda olan dÉ™yÉ™rlÉ™rin ayÄ±n son gÃ¼nlÉ™rini ekrana Ã§Ä±xardÄ±n 

-- 13. EMPLOYEES cÉ™dvÉ™lindÉ™ first_name vÉ™ last_name sÃ¼tunlarÄ±nÄ±n uzunluqlarÄ± eyni olan mÉ™lumatlarÄ±   ekrana Ã§Ä±xardÄ±n. 
    
 
 
 
