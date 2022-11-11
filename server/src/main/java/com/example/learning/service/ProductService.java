package com.example.learning.service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.stream.Collectors;

import org.apache.logging.log4j.util.Strings;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.learning.entity.Category;
import com.example.learning.entity.ImageProduct;
import com.example.learning.entity.Product;
import com.example.learning.entity.ReviewProduct;
import com.example.learning.model.ProductDetailResponse;
import com.example.learning.model.ProductRequest;
import com.example.learning.model.ProductResponse;
import com.example.learning.model.ProductResponse.ProductDataDTO;
import com.example.learning.repository.CategoryRepository;
import com.example.learning.repository.ImageProductRepository;
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
    
    @Autowired
    private ImageProductRepository imgRepository;

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

    /**
     * 
     * @param productRequest
     * @return
     */
    public List<Product> getProductByName(ProductRequest productRequest) {
        List<Product> productList = new ArrayList<Product>();
        if(Strings.isNotEmpty(productRequest.getName())) {
            productList = productRepository.findByNameContains(productRequest.getName());
        }
        
        return productList;
    }

    public ProductDetailResponse getProductDetail(String id) {
        Integer productId = Integer.parseInt(id);
        ProductDetailResponse productResp =  new ProductDetailResponse();
        Product product = productRepository.findById(productId).get();
        List<ImageProduct> imgProduct = imgRepository.findByProductId(productId);
        
        BeanUtils.copyProperties(product, productResp);
        
        List<String> listImg = new ArrayList<String>();
        
        for(ImageProduct img : imgProduct) {
            listImg.add(img.getUrl());
        }
        if(listImg.size() > 0) {
            productResp.setImageUrl(listImg.get(0));
        }
        productResp.setImageUrlList(listImg);
        return productResp;
    }

}
