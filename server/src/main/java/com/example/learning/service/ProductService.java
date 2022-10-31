package com.example.learning.service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.learning.entity.Category;
import com.example.learning.entity.Product;
import com.example.learning.entity.ReviewProduct;
import com.example.learning.model.ProductRequest;
import com.example.learning.model.ProductResponse;
import com.example.learning.model.ProductResponse.ProductDataDTO;
import com.example.learning.repository.CategoryRepository;
import com.example.learning.repository.ProductRepository;
import com.example.learning.repository.ReviewProductRepository;

@Service
public class ProductService {

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private ReviewProductRepository reviewProductRepository;

    @Autowired
    private CategoryRepository categoryRepository;

    /**
     * 
     * @param productRequest
     * @return
     */
    public ProductResponse getListProduct(ProductRequest productRequest) {

        ProductResponse productResp = new ProductResponse();
        List<Product> productList = productRepository.findAll();
        List<Category> category = categoryRepository.findAll();

        List<ReviewProduct> reviewPrdList = reviewProductRepository.findAll();
        List<ProductDataDTO> productDataList = new ArrayList<ProductDataDTO>();
        
        for (Product product : productList) {
            ProductDataDTO productData = new ProductResponse().new ProductDataDTO();

            productData.setId(product.getId());
            productData.setCategory(category.stream().filter(ct -> ct.getId() == product.getCategory())
                    .collect(Collectors.toList()).get(0).getName());
            productData.setCreateDate(product.getCreateDate());
            productData.setDetail(product.getDetail());
            productData.setDiscount(product.getDiscount());
            productData.setImageUrl(product.getImageUrl());
            productData.setName(product.getName());
            productData.setPrice(product.getPrice());
            List<ReviewProduct> reviewPrdByIdList = reviewPrdList.stream()
                    .filter(rp -> rp.getProductId() == product.getId()).collect(Collectors.toList());
            productData.setReviewCount(reviewPrdByIdList.size());
            if(reviewPrdByIdList.size() == 0) {
            } else {
                int sum = reviewPrdByIdList.stream().mapToInt(o -> o.getRate()).sum();
                productData.setRate(new BigDecimal(sum).divide(new BigDecimal(reviewPrdByIdList.size())));
            }
            productDataList.add(productData);
        }
        productResp.setProducts(productDataList);

        return productResp;
    }

}
