SELECT
	nama_user AS nama_pembeli,
	COUNT(1) AS jumlah_transaksi,
	COUNT(DISTINCT orders.kodepos) AS distinct_kodepos,
	SUM(total) AS total_nilai_transaksi,
	AVG(total) AS avg_nilai_transaksi
FROM
	orders
	INNER JOIN users ON buyer_id = user_id
GROUP BY
	user_id,
	nama_user
HAVING
	COUNT(1) >= 10
	AND COUNT(1) = COUNT(DISTINCT orders.kodepos)
ORDER BY
	2 DESC;
