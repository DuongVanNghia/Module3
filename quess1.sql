create database cuahang;
use cuahang;
create table sanpham(
		masp int primary key auto_increment,
        tensp varchar(45),
        mota varchar(200),
        gia float,
        soluong varchar(50)
);
select * from sanpham;
insert into sanpham(tensp,mota,soluong) value ('sac','sac nhanh','5');
insert into sanpham(masp,tensp,mota,soluong) value ( 1, 'dien thoai','dien thoai di dong','3');

select masp,tensp,mota from cuahang;
select masp,tensp,mota from cuahang where gia <10000000;
update sanpham set soluong =50;
set sql_safe_updates = 1;

alter table sanpham ADD barcode varchar(50) null;
alter table sanpham add  warranty varchar(50) DEFAULT '6 thang';

delete from sanpham;
delete from sanpham where id =1;

drop table sanpham;

drop database cuahang;
drop database if exists cuahang;
