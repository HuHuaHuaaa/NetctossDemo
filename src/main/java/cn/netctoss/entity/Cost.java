package cn.netctoss.entity;

import java.util.Date;

public class Cost {
    private Integer costId;

    private String name;

    private Integer baseDuration;

    private Double baseCost;

    private Double unitCost;

    private String status;

    private String descr;

    private Date creatime;

    private Date startime;

    private String costType;

    public Cost(Integer costId, String name, Integer baseDuration, Double baseCost, Double unitCost, String status, String descr, Date creatime, Date startime, String costType) {
        this.costId = costId;
        this.name = name;
        this.baseDuration = baseDuration;
        this.baseCost = baseCost;
        this.unitCost = unitCost;
        this.status = status;
        this.descr = descr;
        this.creatime = creatime;
        this.startime = startime;
        this.costType = costType;
    }

    public Cost() {
        super();
    }

    public Integer getCostId() {
        return costId;
    }

    public void setCostId(Integer costId) {
        this.costId = costId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getBaseDuration() {
        return baseDuration;
    }

    public void setBaseDuration(Integer baseDuration) {
        this.baseDuration = baseDuration;
    }

    public Double getBaseCost() {
        return baseCost;
    }

    public void setBaseCost(Double baseCost) {
        this.baseCost = baseCost;
    }

    public Double getUnitCost() {
        return unitCost;
    }

    public void setUnitCost(Double unitCost) {
        this.unitCost = unitCost;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public String getDescr() {
        return descr;
    }

    public void setDescr(String descr) {
        this.descr = descr == null ? null : descr.trim();
    }

    public Date getCreatime() {
        return creatime;
    }

    public void setCreatime(Date creatime) {
        this.creatime = creatime;
    }

    public Date getStartime() {
        return startime;
    }

    public void setStartime(Date startime) {
        this.startime = startime;
    }

    public String getCostType() {
        return costType;
    }

    public void setCostType(String costType) {
        this.costType = costType == null ? null : costType.trim();
    }
}