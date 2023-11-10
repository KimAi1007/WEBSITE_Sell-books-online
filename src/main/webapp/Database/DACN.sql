create schema DACN ;
use DACN ;

/* create table LOGIN 
(
	id int not null ,
	username VARCHAR(450) NOT NULL,
    pass VARCHAR(450) NOT NULL,
	isAdmin boolean NOT NULL,
    isCustomer boolean NOT NULL,
    PRIMARY KEY(id)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;
; */


create table customer
(
id int not null  ,
firstname varchar(250),
lastname varchar(250),
pass varchar(250),
gmail varchar(250),
phone int,
address varchar(350),
isAdmin boolean ,
isCustomer boolean , 
primary key(id)
)ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

create table loaisach (
idloaisach int primary key,
loaisach varchar(300)
)ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;
insert into loaisach value ('1' , 'Văn Học'),
('2', 'Tiểu Thuyết'),
('3', 'Giáo Khoa-Tham Khảo'),
('4', 'Du Kí'),
('5','Truyện Tranh'),
('6','Tâm Lý'),
('7','Khoa Học-Viễn Tưởng');


 create table sach
 (
masach int not null ,
idloaisach int,
tensach varchar(300) not null,
tacgia varchar(300) not null,
nhacungcap varchar(300) not null,
nhaxuatban varchar(300) not null,
namxuatban varchar(50) not null,
kichthuoc varchar(60),
hinhanh varchar(500),
soluongnhap int not null,
daban int not null,
tonkho int not null,
dongia varchar(300) not null,
gioithieu varchar(1500) not null,
primary key(masach),
constraint LS foreign key (idloaisach) references loaisach (idloaisach)
 )
 ENGINE = InnoDB
 DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

insert into sach values ('001' , '1' , 'Nhà Giả Kim', 'Paulo Coelho' , 'Nhã Nam', 'NXB Hội Nhà Văn','2020','image/SP2.png', '100','56','44','80.000đ',
'Tất cả những trải nghiệm trong chuyến phiêu du theo đuổi vận mệnh của mình đã giúp Santiago thấu hiểu được ý nghĩa sâu xa nhất của hạnh phúc, hòa hợp với vũ trụ và con người.' ),
('003', '2' , 'Hoa Sơn Tái Khởi', 'Thiên Nhai', 'Hàn Quốc','Đang cập nhật','2020','25 x 15cm','chưa có', '90' , '60' ,'30', '79.000đ',
' Nhân vật chính đệ tử đời thứ 13 của Đại Hoa Sơn Phái, Mai Hoa Kiếm Tôn - Chong Myung,huyễn tưởng, tu tiên, trùng sinh'),
('007', '4' , 'Tôi Đi Tìm Tôi', 'Nguyễn Phi Vân', 'Saigon Books','NXB Văn hóa - Văn Nghệ ','2019','25 x 15cm','chưa có', '70' , '35' ,'35', '69.000đ',
'Những câu chuyện lan man, những suy nghĩ di gan, những con đường đã đến chưa đi, những bài học vỡ ra nhờ té sấp mặt trên đường đời gập ghềnh, bất định.');

/* insert into LOGIN values ( '1'  , 'AB' , '1234' ,'1','0'),
('2' , 'CD' , '1234' ,'0' ,'1') ,
('3' , 'AC' , '1234','0','1' ),
('4' , 'BD' , '1234','0','1') ; */

insert into customer values ( '1' , 'Nguyễn', 'A' , '1234' , 'A00@1' , 0397111111, 'Đà Nẵng' , '1' , '0' ),
('5' ,'Nguyễn', 'lê' , '1234' , 'D00@4' , 0367444444 , 'Hà Nội', '1' , '0') ;
select * from loaisach;
select * from sach order by soluongnhap desc ;
SELECT * FROM sach where loaisach like '%Văn Học%';
select * from customer;

select  * from sach order by daban desc ;
SELECT * FROM sach where masach='1';
SELECT * FROM sach where idloaisach= '4';
SELECT * FROM sach where daban ORDER BY daban  DESC 
LIMIT 2;
SELECT * FROM customer where lastname= 'A'  and pass= '1234';
SELECT * FROM customer where id = '1';
select * from LOGIN;

