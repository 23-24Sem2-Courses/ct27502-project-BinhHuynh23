<?php

namespace CT275\Labs;

use PDO;

class Data
{
	private PDO $db;

	private $IDHangHoa = -1;
	private $IDKH = -1;
	private $IDHinhAnh = -1;
	public $TenHinhAnh;
	public $TenHangHoa;
	public $SoLuong;
	public $MoTa;
	public $Thumbnail;
	public $Gia;
	public $KhuyenMai;
	public $IDLoaiHangHoa;
	public $HoTenKH;
	public $Email;
	public $MatKhau;
	public $SDT;
	public $DiaChi;
	private $errors = [];

	public function getIDKH()
	{
		return $this->IDKH;
	}
	public function getIDHangHoa()
	{
		return $this->IDHangHoa;
	}

	public function __construct(PDO $pdo)
	{
		$this->db = $pdo;
	}

	public function fill(array $data)
	{
		if (isset($data['HoTenKH'])) {
			$this->HoTenKH = trim($data['HoTenKH']);
		}
		if (isset($data['Email'])) {
			$this->Email = trim($data['Email']);
		}
		if (isset($data['MatKhau'])) {
			$this->MatKhau = trim($data['MatKhau']);
		}

		if (isset($data['SDT'])) {
			$this->SDT = trim($data['SDT']);
		}

		if (isset($data['DiaChi'])) {
			$this->DiaChi = trim($data['DiaChi']);
		}

		return $this;
	}

	public function all()
	{
		$Datas = [];
		$stmt = $this->db->prepare('select * from hanghoa');
		$stmt->execute();
		while ($row = $stmt->fetch()) {
			$Data = new Data($this->db);
			$Data->fillFromDB($row);
			$Datas[] = $Data;
		}
		return $Datas;
	}

	protected function fillFromDB(array $row)
	{
		[
			'IDHangHoa' => $this->IDHangHoa,
			'TenHangHoa' => $this->TenHangHoa,
			'SoLuong' => $this->SoLuong,
			'Thumbnail' => $this->Thumbnail,
			'Gia' => $this->Gia,
			'KhuyenMai' => $this->KhuyenMai,
			'IDLoaiHangHoa' => $this->IDLoaiHangHoa,
			'MoTa' => $this->MoTa,
		] = $row;
		return $this;
	}

	protected function fillKHFromDB(array $row)
	{
		[
			'IDKH' => $this->IDKH,
			'HoTenKH' => $this->HoTenKH,
			'Email' => $this->Email,
			'SDT' => $this->SDT,
			'MatKhau' => $this->MatKhau,
			'DiaChi' => $this->DiaChi
		] = $row;
		return $this;
	}
	protected function fillImgFromDB(array $row)
	{
		[
			'IDHinhAnh' => $this->IDHinhAnh,
			'TenHinhAnh' => $this->TenHinhAnh,
			'IDHangHoa' => $this->IDHangHoa,
		] = $row;
		return $this;
	}

	public function selectOne($id)
	{

		$Datas = [];
		$stmt = $this->db->prepare('select * from hanghoa where idHangHoa=' . $id . '');
		$stmt->execute();
		while ($row = $stmt->fetch()) {
			$Data = new Data($this->db);
			$Data->fillFromDB($row);
			$Datas[] = $Data;
		}
		return $Datas;
	}
	public function selectOneImg($id)
	{

		$Datas = [];
		$stmt = $this->db->prepare('select * from HinhAnh where idHangHoa=' . $id . '');
		$stmt->execute();
		while ($row = $stmt->fetch()) {
			$Data = new Data($this->db);
			$Data->fillImgFromDB($row);
			$Datas[] = $Data;
		}
		return $Datas;
	}


	public function selectPhone()
	{
		$Datas = [];
		$stmt = $this->db->prepare('select * from hanghoa where IDLoaiHangHoa = 1');
		$stmt->execute();
		while ($row = $stmt->fetch()) {
			$Data = new Data($this->db);
			$Data->fillFromDB($row);
			$Datas[] = $Data;
		}
		return $Datas;
	}

	public function selectPhoneCase()
	{
		$Datas = [];
		$stmt = $this->db->prepare('select * from hanghoa where IDLoaiHangHoa = 2');
		$stmt->execute();
		while ($row = $stmt->fetch()) {
			$Data = new Data($this->db);
			$Data->fillFromDB($row);
			$Datas[] = $Data;
		}
		return $Datas;
	}

	public function selectHeadPhone()
	{
		$Datas = [];
		$stmt = $this->db->prepare('select * from hanghoa where IDLoaiHangHoa = 3');
		$stmt->execute();
		while ($row = $stmt->fetch()) {
			$Data = new Data($this->db);
			$Data->fillFromDB($row);
			$Datas[] = $Data;
		}
		return $Datas;
	}

	public function selectKhachHang()
	{
		$Datas = [];
		$stmt = $this->db->prepare('select * from KhachHang');
		$stmt->execute();
		while ($row = $stmt->fetch()) {
			$Data = new Data($this->db);
			$Data->fillKHFromDB($row);
			$Datas[] = $Data;
		}
		return $Datas;
	}

	public function register()
	{
		$stmt = $this->db->prepare('insert into KhachHang (HoTenKH, MatKhau, Email, SDT, DiaChi) 
			values (:HoTenKH, :MatKhau, :Email, :SDT, :DiaChi)');

		$stmt->execute([
			'HoTenKH' => $this->HoTenKH,
			'Email' => $this->Email,
			'SDT' => $this->SDT,
			'MatKhau' => $this->MatKhau,
			'DiaChi' => $this->DiaChi
		]);
	}

	public function addProduct($productName, $productNumber, $productPrice, $productDiscount, $productThumbnail, $productid, $productnote)
	{
		// Xử lý dữ liệu đầu vào (ví dụ: kiểm tra tính hợp lệ, chuyển đổi dữ liệu...)

		// Tạo câu truy vấn SQL để thêm sản phẩm vào cơ sở dữ liệu
		$stmt = $this->db->prepare('INSERT INTO hanghoa (TenHangHoa, SoLuong, Gia, KhuyenMai, Thumbnail, IDLoaiHangHoa, MoTa) VALUES (:TenHangHoa, :SoLuong, :Gia, :KhuyenMai, :Thumbnail, :IDLoaiHangHoa, :MoTa)');

		// Thực hiện truy vấn
		$result = $stmt->execute([
			'TenHangHoa' => $productName,
			'SoLuong' => $productNumber,
			'Gia' => $productPrice,
			'KhuyenMai' => $productDiscount,
			'Thumbnail' => $productThumbnail,
			'IDLoaiHangHoa' => $productid,
			'MoTa' => $productnote
		]);

		// Trả về kết quả (true/false)
		return $result;
	}

	public function updateProduct($id, $productName, $productPrice, $productDiscount, $productid, $productnote, $productimg)
	{
		// Tạo câu truy vấn SQL để cập nhật thông tin sản phẩm
		$stmt = $this->db->prepare('UPDATE hanghoa SET TenHangHoa = :TenHangHoa, Gia = :Gia, KhuyenMai = :KhuyenMai, IDLoaiHangHoa = :IDLoaiHangHoa, MoTa = :MoTa, Thumbnail = :Thumbnail WHERE IDHangHoa = :IDHangHoa');

		// Thực hiện truy vấn
		$result = $stmt->execute([
			'TenHangHoa' => $productName,
			'Gia' => $productPrice,
			'KhuyenMai' => $productDiscount,
			'IDLoaiHangHoa' => $productid,
			'MoTa' => $productnote,
			'IDHangHoa' => $id,
			'Thumbnail' => $productimg
		]);

		// Trả về kết quả (true/false)
		return $result;
	}

	public function deleteProduct($id)
	{
		$stmt = $this->db->prepare('DELETE FROM hanghoa WHERE IDHangHoa = :IDHangHoa');

		$result = $stmt->execute([
			'IDHangHoa' => $id
		]);

		return $result;
	}
}
