create table nhan_vien(
so_dien_thoai int primary key,
ngay_sinh date,
dia_chi varchar(255),
ten varchar(150),
bang_cap varchar(250),
muc_luong int,
chuc_vu varchar(250),
ma_bophan varchar(250) foreign key references bo_phan(ma_bophan)
);

create table bo_phan(
ten_bophan varchar(250),
ma_bophan varchar(250) primary key
);

create table thietbi(
thietbi_id  int identity(1,1) primary key,
ten_thietbi varchar(150),
ma_thietbi varchar(150),
so_luong int,
so_dien_thoai int foreign key references nhan_vien(so_dien_thoai)
);