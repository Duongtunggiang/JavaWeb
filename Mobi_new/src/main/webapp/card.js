$(document).ready(function() {
    // Sự kiện click nút tăng số lượng
    $(".btn-plus").click(function() {
        var input = $(this).prev("input");
        var quantity = parseInt(input.val());
        input.val(quantity + 1);
        updateTotalPrice();
    });

    // Sự kiện click nút giảm số lượng
    $(".btn-minus").click(function() {
        var input = $(this).next("input");
        var quantity = parseInt(input.val());
        if (quantity > 0) {
            input.val(quantity - 1);
            updateTotalPrice();
        }
    });

    // Sự kiện nhập số trong ô số lượng
    $(".btn-quantity input").on("input", function() {
        var value = $(this).val();
        var parsedValue = parseInt(value);
        if (!isNaN(parsedValue) && parsedValue >= 0) {
            updateTotalPrice();
        }
    });

    // Cập nhật tổng tiền dựa trên số lượng
    function updateTotalPrice() {
        var total = 0;
        $(".btn-quantity input").each(function() {
            var quantity = parseInt($(this).val());
            var price = parseInt($(this).closest("tr").find(".total-price").text().replace(/\D/g, ''));
            var subtotal = quantity * price;
            total += subtotal;
        });
        $("#total-amount").text(formatCurrency(total));
    }

    // Hàm định dạng số tiền thành chuỗi có dấu phân cách hàng nghìn
    function formatCurrency(number) {
        return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
    }

    // Hiển thị tổng số tiền mặc định
    updateTotalPrice();
});