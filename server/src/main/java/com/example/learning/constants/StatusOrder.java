package com.example.learning.constants;

public enum StatusOrder {

    /** Chờ thanh toán */
    PENDING_PAYMENT("1"),

    /** Lỗi */
    FAILED("2"),
    
    /** Đang xử lý */
    PROCESSING("3"), 
    
    /** Hoàn thành */
    COMPLETED("4"), 
    
    /** Thay đổi thông tin */
    ON_HOLD("5"), 
    
    /** Hủy đơn hàng */
    CANCELED("6"), 
    
    /** Hoàn tiền */
    REFUNDED("7"), 
    
    /** Thanh toán nháp */
    CHECKOUT_DRAFT("8"),
    
    /** Đang giao hàng */
    SHIPPING("9");

    /** コード値 */
    private String code;

    /**
     * デフォルト・コンストラクタ。
     *
     * @param code コード値
     */
    private StatusOrder(String code) {
        this.code = code;
    }

    /**
     * {@inheritDoc}
     *
     * @see java.lang.Enum#toString()
     */
    @Override
    public String toString() {
        // コード値を戻すようオーバーライド
        return this.code;
    }

    /**
     * コード値が同じものか比較した結果を戻します。
     *
     * @param code 比較するコード値
     * @return 比較結果
     */
    public boolean equals(String code) {
        return this.code.equals(code);
    }

    /**
     * コード値に該当するインスタンスを戻します。
     *
     * @param code コード値
     * @return 該当インスタンス
     */
    public static StatusOrder find(String code) {
        for (StatusOrder v : values()) {
            if (v.equals(code)) {
                return v;
            }
        }
        return null;
    }
}
