package com.ai.mnt.service.inst.impl;


import java.util.List;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ai.mnt.common.shiro.UserRealm;
import com.ai.mnt.model.inst.MntProcessTaskFact;
import com.ai.mnt.model.sys.SysUser;
import com.ai.mnt.persistence.inst.MntProcessTaskFactMapper;
import com.ai.mnt.service.inst.MntProcessTaskFactService;

/**
 * @Title: MntProcessTaskFactServiceImpl 
 * @Description: MntProcessTaskFactServiceImpl ServiceImplPackage
 * @Author: Auto Generate.
 * @Date: 2016-8-4
 */
@Service
public class MntProcessTaskFactServiceImpl implements MntProcessTaskFactService{

    @Autowired
    MntProcessTaskFactMapper mntProcessTaskFactMapper;
    
    @Autowired
    UserRealm userRealm;
    
    /**
     * 获取所有进程任务执行情况列表
     * @return List<MntProcessTaskFact>
     */
    @Override
    public List<MntProcessTaskFact> findAllMntProcessTaskFact() {
        List<MntProcessTaskFact> mntProcessTaskFactList = mntProcessTaskFactMapper.findAll();
        //cvtContentList(mntProcessTaskFactList);
        return mntProcessTaskFactList;
    }

    /**
     * 获取进程任务执行情况列表
     * @param inst
     * @return List<MntProcessTaskFact>
     */
    @Override
    public List<MntProcessTaskFact> findMntProcessTaskFactList(MntProcessTaskFact mntProcessTaskFact) {
        List<MntProcessTaskFact> mntProcessTaskFactList = mntProcessTaskFactMapper.findList(mntProcessTaskFact);
        //cvtContentList(mntProcessTaskFactList);
        return mntProcessTaskFactList;
    }

    /**
     * 通过主键ID获取进程任务执行情况
     * @param id Primary key
     * @return MntProcessTaskFact
     */
    @Override
    public MntProcessTaskFact findMntProcessTaskFactById(Integer id) {
        MntProcessTaskFact mntProcessTaskFact = mntProcessTaskFactMapper.findByPrimaryKey(id);
        return mntProcessTaskFact;
    }

    /**
     * 添加进程任务执行情况
     * @param MntProcessTaskFact
     */
    @Override
    public void saveMntProcessTaskFact(MntProcessTaskFact mntProcessTaskFact) {
        SysUser currentUser = userRealm.getCurrentUser();
        mntProcessTaskFact.setDeleteFlag("0");
        mntProcessTaskFact.setCreator(currentUser.getUserName());
        mntProcessTaskFact.setModifier(currentUser.getUserName());
        mntProcessTaskFact.setCreateDate(new Date());
        mntProcessTaskFact.setModifyDate(new Date());
        mntProcessTaskFactMapper.save(mntProcessTaskFact);
        
    }

    /**
     * 更新进程任务执行情况
     * 根据MntProcessTaskFact的主键更新主键以外的其他字段
     * @param MntProcessTaskFact
     */
    @Override
    public void updateMntProcessTaskFactById(MntProcessTaskFact mntProcessTaskFact) {
        SysUser currentUser = userRealm.getCurrentUser();
        mntProcessTaskFact.setModifier(currentUser.getUserName());
        mntProcessTaskFact.setModifyDate(new Date());
        mntProcessTaskFactMapper.updateByPrimaryKey(mntProcessTaskFact);
        
    }

    /**
     * 根据主键批量删除进程任务执行情况 
     * 非物理删除 修改删除标识
     * @param id Primary key
     */
    @Override
    public void deleteMntProcessTaskFactByIds(String ids) {
        SysUser currentUser = userRealm.getCurrentUser();
        MntProcessTaskFact mntProcessTaskFact = new MntProcessTaskFact();
        mntProcessTaskFact.setDeleteFlag("1");
        mntProcessTaskFact.setModifier(currentUser.getUserName());
        mntProcessTaskFact.setModifyDate(new Date());
        String[] idAry = ids.split(",");
        for(String id : idAry) {
            mntProcessTaskFact.setId(Integer.parseInt(id));
            mntProcessTaskFactMapper.updateByPrimaryKey(mntProcessTaskFact);
        }
    }
    
    //private void cvtContentList(List<MntProcessTaskFact> MntProcessTaskFactList) {
    //    for(MntProcessTaskFact mntProcessTaskFact : MntProcessTaskFactList) {
    //    }
    //}
}

