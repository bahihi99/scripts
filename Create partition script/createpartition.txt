
select volume 0
assign letter="R"


select disk 1
clean

create partition primary size=10240
format quick fs=ntfs label="DATAS"
assign letter "D"

create partition primary size=10240
format quick fs=ntfs label="DATABASE"
assign letter "E"

create partition primary size=10240
format quick fs=fat32 label="LOGS"
assign letter "F"

create partition primary size=10240
format quick fs=ntfs label="ARCHIVES"
assign letter "G"
