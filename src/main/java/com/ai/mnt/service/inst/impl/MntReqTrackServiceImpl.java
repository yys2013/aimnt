package com.ai.mnt.service.inst.impl;


import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ai.mnt.common.shiro.UserRealm;
import com.ai.mnt.model.inst.MntReqTrack;
import com.ai.mnt.model.sys.SysUser;
import com.ai.mnt.persistence.inst.MntReqTrackMapper;
import com.ai.mnt.service.inst.MntReqTrackService;

/**
 * @Title: MntReqTrackServiceImpl 
 * @Description: MntReqTrackServiceImpl ServiceImplPackage
 * @Author: Auto Generate.
 * @Date: 2016-7-27
 */
@Service
public class MntReqTrackServiceImpl implements MntReqTrackService{

    @Autowired
    MntReqTrackMapper mntReqTrackMapper;
    
    @Autowired
    UserRealm userRealm;
    
    /**
     * 获取所有部门需求故障跟踪列表
     * @return List<MntReqTrack>
     */
    @Override
    public List<MntReqTrack> findAllMntReqTrack() {
        List<MntReqTrack> mntReqTrackList = mntReqTrackMapper.findAll();
        //cvtContentList(mntReqTrackList);
        return mntReqTrackList;
    }

    /**
     * 获取部门需求故障跟踪列表
     * @param req
     * @return List<MntReqTrack>
     */
    @Override
    public List<MntReqTrack> findMntReqTrackList(MntReqTrack mntReqTrack) {
        List<MntReqTrack> mntReqTrackList = mntReqTrackMapper.findList(mntReqTrack);
        //cvtContentList(mntReqTrackList);
        return mntReqTrackList;
    }

    /**
     * 通过主键ID获取部门需求故障跟踪
     * @param trackId Primary key
     * @return MntReqTrack
     */
    @Override
    public MntReqTrack findMntReqTrackByTrackId(Integer trackId) {
        MntReqTrack mntReqTrack = mntReqTrackMapper.findByPrimaryKey(trackId);
        return mntReqTrack;
    }

    /**
     * 添加部门需求故障跟踪
     * @param MntReqTrack
     */
    @Override
    public void saveMntReqTrack(MntReqTrack mntReqTrack) {
        SysUser currentUser = userRealm.getCurrentUser();
        mntReqTrack.setDeleteFlag("0");
        mntReqTrack.setCreator(currentUser.getUserName());
        mntReqTrack.setModifier(currentUser.getUserName());
        mntReqTrack.setCreateDate(new Date());
        mntReqTrack.setModifyDate(new Date());
        //new Date().getTime()-mntReqTrack.getSubmitDate().getTime()   将long转为int
        Long dealdays = new Date().getTime()-mntReqTrack.getSubmitDate().getTime();
        String daytostr = dealdays.toString();
        Integer daytoint = Integer.valueOf(daytostr);
        mntReqTrack.setDealDays(daytoint/86400000);
       // System.out.println(mntReqTrack.getModifyDate());
        mntReqTrackMapper.save(mntReqTrack);
        
    }

    /**
     * 更新部门需求故障跟踪
     * 根据MntReqTrack的主键更新主键以外的其他字段
     * @param MntReqTrack
     */
    @Override
    public void updateMntReqTrackByTrackId(MntReqTrack mntReqTrack) {
        SysUser currentUser = userRealm.getCurrentUser();
        mntReqTrack.setModifier(currentUser.getUserName());
        mntReqTrack.setModifyDate(new Date());
        mntReqTrackMapper.updateByPrimaryKey(mntReqTrack);
        
    }

    /**
     * 根据主键批量删除部门需求故障跟踪 
     * 非物理删除 修改删除标识
     * @param trackId Primary key
     */
    @Override
    public void deleteMntReqTrackByTrackIds(String trackIds) {
        SysUser currentUser = userRealm.getCurrentUser();
        MntReqTrack mntReqTrack = new MntReqTrack();
        mntReqTrack.setDeleteFlag("1");
        mntReqTrack.setModifier(currentUser.getUserName());
        mntReqTrack.setModifyDate(new Date());
        String[] trackIdAry = trackIds.split(",");
        for(String trackId : trackIdAry) {
            mntReqTrack.setTrackId(Integer.parseInt(trackId));
            mntReqTrackMapper.updateByPrimaryKey(mntReqTrack);
        }
    }
    
//    private void cvtContentList(List<MntReqTrack> MntReqTrackList) {
//        for(MntReqTrack mntReqTrack : MntReqTrackList) {
//            mntReqTrack.setProdName(BaseDataCache.getDataName("PROD_INFO", mntReqTrack.getProdId()));
//            mntReqTrack.setBaseName(BaseDataCache.getDataName("BASE_NAME_ENUM", mntReqTrack.getBaseId()));
//            mntReqTrack.setBizType(BaseDataCache.getDataName("BIZ_TYPE", mntReqTrack.getBizType()));
//        }
//    }

/*    @Override
    public List<MntReqTrack> findListStatistics(MntReqTrack mntReqTrack) {
        List<MntReqTrack> statisticsList = mntReqTrackMapper.findListStatistics(mntReqTrack);
        return statisticsList;
    }

    @Override
    public List<MntReqTrack> findListStatisticsByBaseName(
            MntReqTrack mntReqTrack) {
        List<MntReqTrack>statisticsBaseNameList= mntReqTrackMapper.findListStatisticsByBaseName(mntReqTrack);
        return statisticsBaseNameList;
    }
*/
    @Override
    public List<MntReqTrack> findListStatisticsByProdName(
            MntReqTrack mntReqTrack) {
        List<MntReqTrack>statisticsBaseNameList= mntReqTrackMapper.findListStatisticsByProdName(mntReqTrack);
        return statisticsBaseNameList;
    }

    @Override
    public List<MntReqTrack> getReqSummaryStat(MntReqTrack mntReqTrack) {
        List<MntReqTrack> MntReqTracks = mntReqTrackMapper.getReqSummaryStat(mntReqTrack);
        
        return MntReqTracks;
    }
    
}

