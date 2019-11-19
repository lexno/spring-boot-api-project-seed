package ${basePackage}.service.impl;

import ${basePackage}.dao.${modelNameUpperCamel}Mapper;
import ${basePackage}.model.${modelNameUpperCamel};
import ${basePackage}.service.${modelNameUpperCamel}Service;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Condition;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by ${author} on ${date}.
 */
@Service
@Transactional
public class ${modelNameUpperCamel}ServiceImpl implements ${modelNameUpperCamel}Service {

    @Resource
    private ${modelNameUpperCamel}Mapper ${modelNameLowerCamel}Mapper;

    @Override
    public void save(${modelNameUpperCamel} ${modelNameLowerCamel}) {
        ${modelNameLowerCamel}Mapper.insertSelective(${modelNameLowerCamel});
    }

    @Override
    public void save(List<${modelNameUpperCamel}> ${modelNameLowerCamel}s) {
        ${modelNameLowerCamel}Mapper.insertList(${modelNameLowerCamel}s);
    }

    @Override
    public void deleteById(Long id) {
        ${modelNameLowerCamel}Mapper.deleteByPrimaryKey(id);
    }

    @Override
    public void deleteByIds(String ids) {
        ${modelNameLowerCamel}Mapper.deleteByIds(ids);
    }

    @Override
    public void update(${modelNameUpperCamel} ${modelNameLowerCamel}) {
        ${modelNameLowerCamel}Mapper.updateByPrimaryKeySelective(${modelNameLowerCamel});
    }

    @Override
    public ${modelNameUpperCamel} findById(Long id) {
        return ${modelNameLowerCamel}Mapper.selectByPrimaryKey(id);
    }

    @Override
    public List<${modelNameUpperCamel}> findByIds(String ids) {
        return ${modelNameLowerCamel}Mapper.selectByIds(ids);
    }

    @Override
    public List<${modelNameUpperCamel}> findByCondition(Condition condition) {
        return ${modelNameLowerCamel}Mapper.selectByCondition(condition);
    }

    @Override
    public List<${modelNameUpperCamel}> findAll() {
        return ${modelNameLowerCamel}Mapper.selectAll();
    }
}
