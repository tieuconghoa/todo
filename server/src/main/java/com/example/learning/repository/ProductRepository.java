package com.example.learning.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.learning.entity.Product;
import com.example.learning.entity.custom.ProductEntityCustom;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {

    @Query(nativeQuery = true, value = "SELECT pd.*, rpd.count, rpd.rate" + "    FROM" + "    product pd"
            + "    LEFT JOIN ( SELECT COUNT(*) as count, product_id, AVG( rate ) as rate FROM review_product ) rpd ON rpd.product_id = pd.id "
            + "    GROUP BY" + "    pd.id")
    List<ProductEntityCustom> getListProduct();

}
