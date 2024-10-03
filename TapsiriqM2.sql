-- 1. 2004-cü ildə işə qəbul edilmiş hər bir işçinin soyadını və işə qəbul_tarixini göstərin. 

 SELECT last_name,
        hire_date
   FROM employees
  WHERE hire_date 
BETWEEN '01-jan-04' and '31-dec-04';

   
-- 2. Meneceri olmayan bütün işçilərin soyadını və iş yerini(job_id) göstərin. 

SELECT last_name,
       job_id,
       manager_id
  FROM employees
 WHERE manager_id is null;


-- 3. Əmək haqqı 12000 -dən çox olan əməkdaşların məlumatlarını ekrana çıxardan sorğunu yazın. 

SELECT first_name,
       last_name,
       job_id,
       salary
  FROM employees
 WHERE salary> 12000;

     
       
-- 4. Əmək haqqı 5000 və 12000 intervalına daxil olmayan məlumatları ekrana çıxardan sorğunu yazın.

      
      
    
-- 5. 20.02.2008 (20-feb-08) və 01.05.2008(1-may-08) tarixləri arasında işə qəbul olan əməkdaşların məlumatlarını
--    ekrana çıxardan sorğunu yazın.  

     
-- 6. İşi(JOB_ID) ST_CLERK və SA_REP olan və əmək haqqı 2500, 3500 və 7000 bərabər olmayan məlumatları ekrana 
--    çıxardan sorğunu yazın.   

        
   
-- 7. Adında üçüncü simvolu balaca "a" hərfi olan məlumatları ekrana çıxardan sorğunu yazın.



-- 8. 20 və 50 nömrəli departamentlərdə işləyən və əmək haqqı 6000 və 15000 intervalında olan məlumatları ekrana 
--    çıxardan sorğunu yazın.
   
       
   
-- 9. select * from employees where hire_date between '17-jun-03' and '21-sep-05' sorğusunda between əvəzinə 
--    mətiqi operatorlardan(and, or, not in) istifadə edərək yuxardakı sorğu ilə eyni nəticəni qaytaran analoji 
--    sorğunu yazın.
      
        
-- 10.select * from table_name where 1 = 1 sorğu(table_name yerində istənilən cədvəl ola bilər) nəticə 
--    qaytaracaqmı? Nəticə qaytaracaqsa bu prosesin necə baş verdiyini izah edin.
      
      
      
-- 11.select * from table_name where null = 1 sorğu(table_name yerində istənilən cədvəl ola bilər) nəticə 
--    qaytaracaqmı? Nəticə qaytaracaqsa bu prosesin necə baş verdiyini izah edin.


      
-- 12.Aşağıda qeyd olunan şəkildə cədvəl verilmişdir. Cədvəldə sütunlar aşağıdakı məlumatı ifadə edir
      CustomerİD – müştərinin unikal kodu
      Name  - Ad soyad
      Contract_start_Date – Müqavilənin başlama tarixi
      Contract_End_Date – Müqavilənin bitmə tarixi
      Contract_Type – Müqavilənin tipi
        
      CustomerİD   Name         Contract_start_data Contract_end_date Contract_type
          1      Məmmədov Samir    10.11.2019           10.11.2020       Deposit
          2      Əliyev Əhməd      12.08.2018           12.08.2021       Credit
          3      Ağayeva Təhminə   25.01.2019           25.07.2023       Credit
          4      Əhmədov Nahid     15.04.2021           15.10.2022       Account


      - Cari günün 15.09.2022(15-sep-22) olduğunu nəzərə alaraq müddəti bitməmiş müqavilələri əldə etmək üçün 
        lazım olan sorğu
        
       
         
      - Credit tipli müqavilələri əldə etməyimiz üçün SQL sorğusu
         
        
         
      - Müddəti bitməmiş kredit müqavilələrinin sorğusu 
        
      
-- 13. Cədvəldə hər bir avtomobil modeli üzrə satış sayı və cəmi satış məbləği qeyd olunmuşdur. İD, Brand, Price 
--     məlumatları əldə etmək üçün müvafiq sorğu yazın. Price olaraq Total_Amount sütununun Sell_Count sütununa 
--     nisbəti nəzərdə tutulur.   

      ID  Brand       Model  Sell_Count  Total_Amount
      1   Toyota      Prado      2          160000
      2   Mitsubishi  Pajero     3          180000
      3   Hyundai     Elantra    6          240000
      
      
      
   
--14. Aşağıdakı cədvələ iki sayda sorğu yazılmışdır. 1ci və 2ci sorğu hansı nəticələri ekrana gətirəcəkdir  
--    (ekrana gələcək sərtin İD-sini qeyd edin) və nəticələr eyni olarsa və ya fərqli olarsa, bunun səbəbini izah 
--    edin.
        Name_And_City
        ID    Name      City        Income
        1     Ali       Baku         3000
        2     Ahmad     Sumgayıt     1500
        3     Akbar     Ganja        1500
        4     Sanubar   Ganja        1300
        5     Tahir     Jalilabad    6000
        6     Aysel     Shamaxı      800
        7     Sanubar   Tovuz        900
    Sorğu 1. Select * from Name_and_city where Name='Ali' or Name='Sanubar' and Income<1000;
            
    Sorğu 2. Select * from Name_And_City where Name='Ali' and Income < 1000 or Name='Sanubar';
           
    
--15.Aşağıda qeyd olunan cədvəldə malın İD-si, sayı, qiyməti və məbləği əks olunmuşdur.Cədvəlin bəzi sətirlərində
--   hesablama səhvdir, yəni say*qiymət məbləğə bərabər deyil. Hesablamanın səhv olduğu sətirləri ekrana çıxaran sorğu
--   yazın. 
    
    Product_İD  Price Unit_Count  Total_amount
         1       12         4          44
         2        5         7          35
         3        3         25         75
         4       10         4          30
         5       12         3          36
         6       8          4          32
         
   
         
  
