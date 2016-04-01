package com.malex.controller;

import com.malex.model.dto.GoodsDTO;
import com.malex.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import java.util.List;


@Controller
@RequestMapping("/")
public class HomeController {

    @Autowired
    private GoodsService goodsService;

    @RequestMapping(method = RequestMethod.GET)
    public String getIndex(Model model) {
        List<GoodsDTO> allDTO = goodsService.findAllDTO();
        model.addAttribute("listDTO", allDTO);
        return "index";
    }

    @RequestMapping(value = "/article", method = RequestMethod.GET)
    public String getArticle(Model model) {
        return "article";
    }

    @RequestMapping(value = "/about", method = RequestMethod.GET)
    public String getAbout() {
        return "about";
    }

    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    public String getUpload(Model model,
                            @RequestParam("name") String name,
                            @RequestParam("title") String title,
                            @RequestParam("file") CommonsMultipartFile file) {

        GoodsDTO entityDTO = new GoodsDTO();
        entityDTO.setName(name);
        entityDTO.setTitle(title);
        entityDTO.setDataCMF(file);

        GoodsDTO goodsDTO = goodsService.saveDTO(entityDTO);

        model.addAttribute("entity", goodsDTO);

        if (goodsDTO.isFile()) {
            model.addAttribute("photo", goodsDTO.getDataToSrt());
        }

        model.addAttribute("listDTO", goodsService.findAllDTO());

        return "about";
    }




}
