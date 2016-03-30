package com.malex.controller;

import com.malex.model.GoodsEntity;
import com.malex.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/")
public class HomeController {

    @Autowired
    private GoodsService goodsService;

    @RequestMapping(method = RequestMethod.GET)
    public String getIndex() {
        return "index";
    }

    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    public String getUpload(Model model,
                            @RequestParam("name") String name,
                            @RequestParam("title") String title) {

        System.err.println(name);
        System.err.println(title);

        GoodsEntity entity = new GoodsEntity();
        entity.setName(name);
        entity.setTitle(title);

        GoodsEntity goodsEntity = goodsService.save(entity);

        model.addAttribute("entity", goodsEntity);
        return "index";
    }

}
