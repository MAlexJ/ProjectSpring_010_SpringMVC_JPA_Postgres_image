package com.malex.model;

import javax.persistence.*;

@Entity
@Table(name = "goods")
public class GoodsEntity {

    @Id
    @SequenceGenerator(name = "app_sequence", sequenceName = "app_sequence", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "app_sequence")
    private Long id;

    @Column(name = "name")
    private String name;

    @Column(name = "title")
    private String title;

    // http://stackoverflow.com/questions/3677380/proper-hibernate-annotation-for-byte
    @Lob
    @Column(name = "data")
    private byte[] data;

    public GoodsEntity() {
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

    public void setData(byte[] data) {
        this.data = data;
    }
}
