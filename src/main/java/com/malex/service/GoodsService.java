package com.malex.service;

import com.malex.model.GoodsEntity;
import com.malex.model.dto.GoodsDTO;

import java.util.List;

public interface GoodsService {

    // GoodsDTO
    GoodsDTO saveDTO(GoodsDTO entity);

    GoodsDTO findByIdDTO(Long id);

    List<GoodsDTO> findAllDTO();

    // GoodsEntity
    GoodsEntity save(GoodsEntity entity);

    GoodsEntity update(GoodsEntity entity);

    void delete(Long id);

    GoodsEntity findById(Long id);

    List<GoodsEntity> findAll();
}
