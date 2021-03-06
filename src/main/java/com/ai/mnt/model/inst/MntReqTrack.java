package com.ai.mnt.model.inst;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * @Title: MntReqTrack 
 * @Description: MntReqTrack Model
 * @Author: Auto Generate.
 * @Date: 2016-7-27
 */
public class MntReqTrack implements Serializable{

    private static final long serialVersionUID = 1L;

    /**编号*/
    private Integer trackId;

    /**安装点*/
    private String baseId;

    /**安装点名称*/
    private String baseName;

    /**产品编号*/
    private String prodId;

    /**产品名称*/
    private String prodName;

    /**需求编号*/
    private String bizNo;

    /**需求名称*/
    private String bizName;

    /**需求类型*/
    private String bizType;

    /**需求来源*/
    private String bizSrc;

    /**需求当前状态*/
    private String bizSts;

    /**节点责任人*/
    private String nodePerson;

    /**优先级*/
    private String priority;

    /**紧急程度*/
    private String urgentLevel;

    /**录入日期*/
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date submitDate;

    /**处理时长(天)*/
    private Integer dealDays;
    @DateTimeFormat(pattern = "yyyy-MM-dd")

    /**期望发布日期*/
    private Date askEndDate;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    /**计划发布日期*/
    private Date planReleaseDate;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    /**计划上线日期*/
    private Date planOnlineDate;


    /**删除标识，1删除，0未删除*/
    private String deleteFlag;

    /**创建人*/
    private String creator;

    /**创建时间*/
    private Date createDate;

    /**修改人*/
    private String modifier;

    /**修改时间*/
    private Date modifyDate;

    /**开始时间*/
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date beginDate;
    
    /**结束时间*/
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date endDate;
    
    //统计
    private Integer count ;
    

    public Date getBeginDate() {
        return beginDate;
    }

    public void setBeginDate(Date beginDate) {
        this.beginDate = beginDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public Integer getTrackId() {
        return trackId;
    }

    public void setTrackId(Integer trackId) {
        this.trackId = trackId;
    }

    public String getBaseId() {
        return baseId;
    }

    public void setBaseId(String baseId) {
        this.baseId = baseId;
    }

    public String getBaseName() {
        return baseName;
    }

    public void setBaseName(String baseName) {
        this.baseName = baseName;
    }

    public String getProdId() {
        return prodId;
    }

    public void setProdId(String prodId) {
        this.prodId = prodId;
    }

    public String getProdName() {
        return prodName;
    }

    public void setProdName(String prodName) {
        this.prodName = prodName;
    }

    public String getBizNo() {
        return bizNo;
    }

    public void setBizNo(String bizNo) {
        this.bizNo = bizNo;
    }

    public String getBizName() {
        return bizName;
    }

    public void setBizName(String bizName) {
        this.bizName = bizName;
    }

    public String getBizType() {
        return bizType;
    }

    public void setBizType(String bizType) {
        this.bizType = bizType;
    }

    public String getBizSrc() {
        return bizSrc;
    }

    public void setBizSrc(String bizSrc) {
        this.bizSrc = bizSrc;
    }

    public String getBizSts() {
        return bizSts;
    }

    public void setBizSts(String bizSts) {
        this.bizSts = bizSts;
    }

    public String getNodePerson() {
        return nodePerson;
    }

    public void setNodePerson(String nodePerson) {
        this.nodePerson = nodePerson;
    }

    public String getPriority() {
        return priority;
    }

    public void setPriority(String priority) {
        this.priority = priority;
    }

    public String getUrgentLevel() {
        return urgentLevel;
    }

    public void setUrgentLevel(String urgentLevel) {
        this.urgentLevel = urgentLevel;
    }

    public Date getSubmitDate() {
        return submitDate;
    }

    public void setSubmitDate(Date submitDate) {
        this.submitDate = submitDate;
    }

    public Integer getDealDays() {
        return dealDays;
    }

    public void setDealDays(Integer dealDays) {
        this.dealDays = dealDays;
    }

    public Date getAskEndDate() {
        return askEndDate;
    }

    public void setAskEndDate(Date askEndDate) {
        this.askEndDate = askEndDate;
    }

    public Date getPlanReleaseDate() {
        return planReleaseDate;
    }

    public void setPlanReleaseDate(Date planReleaseDate) {
        this.planReleaseDate = planReleaseDate;
    }

    public Date getPlanOnlineDate() {
        return planOnlineDate;
    }

    public void setPlanOnlineDate(Date planOnlineDate) {
        this.planOnlineDate = planOnlineDate;
    }

    public String getDeleteFlag() {
        return deleteFlag;
    }

    public void setDeleteFlag(String deleteFlag) {
        this.deleteFlag = deleteFlag;
    }

    public String getCreator() {
        return creator;
    }

    public void setCreator(String creator) {
        this.creator = creator;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getModifier() {
        return modifier;
    }

    public void setModifier(String modifier) {
        this.modifier = modifier;
    }

    public Date getModifyDate() {
        return modifyDate;
    }

    public void setModifyDate(Date modifyDate) {
        this.modifyDate = modifyDate;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }


}