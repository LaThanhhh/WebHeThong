<?php
    include('connection.php');
        
    //$trangthai_string = ['Chưa xác nhận','Bị hủy','Giao hàng thành công'];
    //$result = [];
    //foreach($trangthai as $status)
    //$stmt = $conn->prepare("SELECT COUNT(*) as trangthai_count FORM donhang WHERE donhang.trangthai='".$trangthai_string."'");
    //$stmt->execute();
    //$row = $stmt->fetch();
    //$count = $row['trangthai_count'];
    //$result[] = [
        //'name' => strtoupper($status),
        //'y' =>(int)$count
    //];
    $trangthai = ['Chưa xác nhận','Bị hủy','Giao hàng thành công'];
    $trangthai_string = implode("','", $trangthai); // Chuyển đổi mảng thành chuỗi
    
    $stmt = $conn->prepare("SELECT COUNT(*) as trangthai_count FROM donhang 
        WHERE donhang.trangthai IN ('$trangthai_string')"); // Sử dụng IN để so sánh với một danh sách giá trị
    $stmt->execute();
    $row = $stmt->fetch();

    $count = $row['trangthai_count'];
        
        
    //$results = array();
    //foreach ($trangthai as $status) {
        // Thực hiện truy vấn SQL để lấy số lượng của mỗi trạng thái và gán cho biến $count
        // Sau đó thêm một mảng con vào mảng kết quả
        //$results[] = array(
            //'name' => strtoupper($status),
            //'y' => (int)$count
        //);
    //}
    $results = array();
    $total = 0; // Tổng số lượng các trạng thái

// Tính tổng số lượng của các trạng thái
    foreach ($trangthai as $status) {
        // Thực hiện truy vấn SQL để lấy số lượng của mỗi trạng thái và gán cho biến $count
        // Sau đó cộng vào tổng số lượng
        $total += $count;
    }

    // Tính toán phần trăm cho mỗi trạng thái
    foreach ($trangthai as $status) {
        // Thực hiện truy vấn SQL để lấy số lượng của mỗi trạng thái và gán cho biến $count
        $percentage = ($count / $total) * 100;

    // Thêm một mảng con vào mảng kết quả
        $results[] = array(
            'name' => strtoupper($status),
            'y' => (int)$percentage
        );
    }


    
  
    
                        
?>
