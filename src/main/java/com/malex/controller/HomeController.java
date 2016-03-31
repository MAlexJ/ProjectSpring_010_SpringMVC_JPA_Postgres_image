package com.malex.controller;

import com.malex.model.GoodsEntity;
import com.malex.service.GoodsService;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.codec.binary.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;


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
                            @RequestParam("title") String title,
                            @RequestParam("file") CommonsMultipartFile file) {


        GoodsEntity entity = new GoodsEntity();
        entity.setName(name);
        entity.setTitle(title);

        if (file != null) {
            entity.setData(file.getBytes());
        }

        GoodsEntity goodsEntity = goodsService.save(entity);
        model.addAttribute("entity", goodsEntity);

        // display image
        if (goodsEntity.getData() != null && goodsEntity.getData().length > 0) {
            System.out.println("length ----------  " + goodsEntity.getData().length);
            StringBuilder sb = new StringBuilder();
            sb.append("data:image/png;base64,");
            sb.append(StringUtils.newStringUtf8(Base64.encodeBase64(goodsEntity.getData(), false)));
            String contourChart = sb.toString();
            model.addAttribute("photo", contourChart);
        }
        return "index";
    }

}
