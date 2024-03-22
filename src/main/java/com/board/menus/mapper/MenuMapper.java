package com.board.menus.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.board.menus.domain.MenuVo;

@Mapper
public interface MenuMapper {

	List<MenuVo> getMenuList();
	
	// error
	// void insertMenu(String menu_id, String menu_name, int menu_seq);
	// menuMapper.xml 에서 id="insertMenu" SQL 문을 찾아서 실행
	void insertMenu( MenuVo menuVo );
	
	void insertMenuByName(MenuVo menuVo);
	
	void updateMenu(MenuVo menuVo);

	void deleteMenu(MenuVo menuVo);

	MenuVo getMenu(String menu_id);

}







