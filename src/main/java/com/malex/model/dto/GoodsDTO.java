package com.malex.model.dto;

import org.apache.commons.codec.binary.Base64;
import org.apache.commons.codec.binary.StringUtils;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import java.io.Serializable;

public class GoodsDTO implements Serializable {

    private Long id;

    private String name;

    private String title;

    private byte[] data;

    public GoodsDTO() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public byte[] getData() {
        return data;
    }

    public String getDataToSrt() {
        if (this.data != null && this.data.length > 0) {
            StringBuilder sb = new StringBuilder();
            sb.append("data:image/png;base64,");
            sb.append(StringUtils.newStringUtf8(Base64.encodeBase64(this.data, false)));
            return sb.toString();
        }
        return "";
    }

    public void setData(byte[] data) {
        this.data = data;
    }

    public void setDataCMF(CommonsMultipartFile file) {
        if (file != null) {
            this.data = file.getBytes();
        }
    }

    public boolean isFile() {
        return getDataToSrt() != null && !getDataToSrt().equals("");
    }


    @Override
    public String toString() {
        return "GoodsDTO{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", title='" + title + '\'' +
                ", data=" + getData() +
                '}';
    }
}
