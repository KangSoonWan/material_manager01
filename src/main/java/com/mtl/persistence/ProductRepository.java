package com.mtl.persistence;

import org.springframework.data.repository.CrudRepository;

import com.mtl.domain.Product;

public interface ProductRepository extends CrudRepository<Product, String>{

}
