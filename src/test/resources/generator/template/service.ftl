package ${basePackage}.service;

import ${basePackage}.model.${modelNameUpperCamel};
import tk.mybatis.mapper.entity.Condition;

import java.util.List;

/**
 * Created by ${author} on ${date}.
 */
public interface ${modelNameUpperCamel}Service {
    void save(${modelNameUpperCamel} ${modelNameLowerCamel});//持久化
    void save(List<${modelNameUpperCamel}> ${modelNameLowerCamel}s);//批量持久化
    void deleteById(Long id);//通过主鍵刪除
    void deleteByIds(String ids);//批量刪除 eg：ids -> “1,2,3,4”
    void update(${modelNameUpperCamel} ${modelNameLowerCamel});//更新
    ${modelNameUpperCamel} findById(Long id);//通过ID查找
    List<${modelNameUpperCamel}> findByIds(String ids);//通过多个ID查找//eg：ids -> “1,2,3,4”
    List<${modelNameUpperCamel}> findByCondition(Condition condition);//根据条件查找
    List<${modelNameUpperCamel}> findAll();//获取所有
}
