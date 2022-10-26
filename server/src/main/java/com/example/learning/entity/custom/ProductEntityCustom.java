package com.example.learning.entity.custom;

import java.math.BigDecimal;
import java.time.LocalDateTime;

public interface ProductEntityCustom {
    /**
     * @return the id
     */
    public int getId();

    /**
     * @return the name
     */
    public String getName();

    /**
     * @return the image_url
     */
    public String getImageUrl();

    /**
     * @return the price
     */
    public BigDecimal getPrice();

    /**
     * @return the discount
     */
    public BigDecimal getDiscount();

    /**
     * @return the detail
     */
    public String getDetail();

    /**
    
    /**
     * @return the reviewCount
     */
    public int getCount();

    /**
     * @return the rate
     */
    public BigDecimal getRate();

    /**
     * @return the createDate
     */
    public LocalDateTime getCreateDate();

    /**
     * @return the category
     */
    public String getCategory();

}
