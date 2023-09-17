-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('广告策略', '2074', '1', 'advertisementStrategy', 'operation/advertisement/advertisementStrategy/index', 1, 0, 'C', '0', '0', 'operation/advertisement:advertisementStrategy:list', '#', 'admin', sysdate(), '', null, '广告策略菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('广告策略查询', @parentId, '1',  '#', '', 1, 0, 'F', '0', '0', 'operation/advertisement:advertisementStrategy:query',        '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('广告策略新增', @parentId, '2',  '#', '', 1, 0, 'F', '0', '0', 'operation/advertisement:advertisementStrategy:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('广告策略修改', @parentId, '3',  '#', '', 1, 0, 'F', '0', '0', 'operation/advertisement:advertisementStrategy:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('广告策略删除', @parentId, '4',  '#', '', 1, 0, 'F', '0', '0', 'operation/advertisement:advertisementStrategy:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('广告策略导出', @parentId, '5',  '#', '', 1, 0, 'F', '0', '0', 'operation/advertisement:advertisementStrategy:export',       '#', 'admin', sysdate(), '', null, '');