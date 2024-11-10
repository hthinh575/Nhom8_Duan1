<div class="row mb footer">
    <div class="footer-container">
      <div class="footer-column">
        <h3>Giới thiệu</h3>
        <p>Công ty MHT Tea cung cấp các sản giải khát và dinh dưỡng chất lượng cao.</p>
        <p><i class="fas fa-map-marker-alt"></i> 123 Đường ABC, Quận XYZ, Thành phố Hồ Chí Minh</p>
        <p><i class="fas fa-phone-alt"></i> +84 123 456 789</p>
        <p><i class="fas fa-envelope"></i> mhttea@gmail.com</p>
      </div>

      <div class="footer-column">
        <h3>Về MHT Tea</h3>
        <a href="index.php?act=gioithieu">Giới thiệu</a>
        <a href="index.php?act=lienhe">Liên hệ</a>
        <a href="index.php?act=gopy">Góp ý</a>
        <a href="index.php?act=hoidap">Hỏi đáp</a>
      </div>

      <div class="footer-column">
        <h3>Thông tin hỗ trợ</h3>
        <a href="#">Chính sách đổi trả</a>
        <a href="#">Chính sách bảo hành</a>
        <a href="#">Chính sách bảo mật</a>
        <a href="#">Chính sách vận chuyển</a>
        <a href="#">Hướng dẫn mua hàng</a>
        <a href="#">Hướng dẫn thanh toán</a>
      </div>

      <div class="footer-column">
        <h3>Kết nối với chúng tôi</h3>
        <div class="footer-socials">
          <a href="#"><i class="fab fa-facebook-f" style="font-size: 24px;"></i></a>
          <a href="#"><i class="fab fa-youtube" style="font-size: 24px;"></i></a>
          <a href="#"><i class="fab fa-instagram" style="font-size: 24px;"></i></a>
          <a href="#"><i class="fab fa-twitter" style="font-size: 24px;"></i></a>
        </div>
      </div>

      <!-- Phần Đăng ký nhận tin -->
      <div class="footer-column">
        <h3>Đăng ký nhận tin</h3>
        <p>Nhận thông tin khuyến mãi và sản phẩm mới nhất từ MHT Tea.</p>
        <form class="subscribe-form">
          <input type="email" placeholder="Nhập email của bạn">
          <button type="submit">Gửi</button>
        </form>
      </div>
    </div>
    <div class="footer-bottom">
      <p>Copyright &copy; 2024 MHT Tea. Powered by Nhóm 8.</p>
    </div>
  </div>
    


    <button id="back-to-top" title="Quay lại đầu trang">
        <i class="fas fa-arrow-up"></i>
    </button>
<!-- js cho slideshow  -->
<script>
    let slideIndex = 0;
        showSlides();

        function showSlides() {
        let i;
        let slides = document.getElementsByClassName("mySlides");
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slideIndex++;
        if (slideIndex > slides.length) {slideIndex = 1}
        slides[slideIndex-1].style.display = "block";
        setTimeout(showSlides, 2000); // Change image every 2 seconds
        }
</script>


<script>
  // Lấy nút quay lại đầu trang
  const backToTopButton = document.getElementById('back-to-top');

  // Hiển thị nút khi cuộn xuống
  window.onscroll = function() {
    if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
      backToTopButton.style.display = "block";
    } else {
      backToTopButton.style.display = "none";
    }
  };

  // Khi người dùng nhấp vào nút quay lại đầu trang
  backToTopButton.onclick = function() {
    window.scrollTo({
      top: 0,
      behavior: 'smooth' // Cuộn mượt mà
    });
  };
</script>


</body>

</html>