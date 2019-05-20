package org.funny.persistence;

import org.funny.domain.Product;
import org.springframework.data.repository.CrudRepository;

public interface ProductRepository extends CrudRepository<Product, String>{

}
