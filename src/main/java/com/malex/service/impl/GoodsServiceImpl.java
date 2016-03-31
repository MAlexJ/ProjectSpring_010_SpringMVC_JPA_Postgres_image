package com.malex.service.impl;

import com.malex.model.GoodsEntity;
import com.malex.model.dto.GoodsDTO;
import com.malex.repository.GoodsRepository;
import com.malex.service.GoodsService;
import org.dozer.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.ArrayList;
import java.util.List;

@Service
public class GoodsServiceImpl implements GoodsService {

    @Autowired
    private GoodsRepository repository;

    @Autowired
    private Mapper beanMapper;

    @Override
    public GoodsDTO saveDTO(GoodsDTO entityDTO) {
        GoodsEntity entity = beanMapper.map(entityDTO, GoodsEntity.class);
        entity = this.repository.save(entity);
        return beanMapper.map(entity, GoodsDTO.class);
    }

    @Override
    public GoodsDTO findByIdDTO(Long id) {
        GoodsEntity entity = repository.findOne(id);
        return beanMapper.map(entity, GoodsDTO.class);
    }

    @Override
    public List<GoodsDTO> findAllDTO() {
        List<GoodsEntity> entityList = repository.findAll();
        List<GoodsDTO> entityListDTO = new ArrayList<>();
        for (GoodsEntity entity:entityList) {
            entityListDTO.add(beanMapper.map(entity, GoodsDTO.class));
        }
        return entityListDTO;
    }

    @Override
    public GoodsEntity save(GoodsEntity entity) {
        return repository.save(entity);
    }

    @Override
    public GoodsEntity update(GoodsEntity entity) {
        return repository.save(entity);
    }

    @Override
    public void delete(Long id) {
        repository.delete(id);
    }

    @Override
    public GoodsEntity findById(Long id) {
        return repository.findOne(id);
    }

    @Override
    public List<GoodsEntity> findAll() {
        return repository.findAll();
    }

}
