select nama_user as nama_pembeli, total as nilai_transaksi, created_at as tanggal_transaksi
from orders
inner join users on buyer_id = user_id
where created_at>='2019-12-01' and created_at<'2020-01-01'
and total >= 20000000
order by 1
