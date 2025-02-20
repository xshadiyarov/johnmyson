-- LAYOUT_WIDGETS

INSERT INTO LAYOUT_WIDGETS (key, type, sort_order)
VALUES ('modal-alt-vd', 'modal', 100);

INSERT INTO LAYOUT_WIDGETS (key, type, sort_order)
VALUES ('modal-alt-me', 'modal', 100);

INSERT INTO LAYOUT_WIDGETS (key, type, sort_order)
VALUES ('modal-alt-ms', 'modal', 100);

-- LAYOUT_COMPONENTS

INSERT INTO LAYOUT_COMPONENTS (key, type, title, badge, subtitle, is_enabled, is_active, is_on, icon_id, action_id,
                               widget_id, sort_order)
VALUES ('modal-text-vd', 'modal-text', 't:vd_service', NULL, 't:alt_text_vd', 'true', 'true', 'true',
        (SELECT id FROM ICONS WHERE name = 'isom_particle_transfer_vd'),
        NULL,
        (SELECT id FROM LAYOUT_WIDGETS WHERE key = 'modal-alt-vd'), 100);

INSERT INTO LAYOUT_COMPONENTS (key, type, title, badge, subtitle, is_enabled, is_active, is_on, icon_id, action_id,
                               widget_id, sort_order)
VALUES ('modal-text-me', 'modal-text', 't:me_service', NULL, 't:alt_text_me', 'true', 'true', 'true',
        (SELECT id FROM ICONS WHERE name = 'isom_particle_transfer_me'),
        NULL,
        (SELECT id FROM LAYOUT_WIDGETS WHERE key = 'modal-alt-me'), 100);

INSERT INTO LAYOUT_COMPONENTS (key, type, title, badge, subtitle, is_enabled, is_active, is_on, icon_id, action_id,
                               widget_id, sort_order)
VALUES ('modal-text-ms', 'modal-text', 't:ms_service', NULL, 't:alt_text_ms', 'true', 'true', 'true',
        (SELECT id FROM ICONS WHERE name = 'isom_particle_transfer_ms'),
        NULL,
        (SELECT id FROM LAYOUT_WIDGETS WHERE key = 'modal-alt-ms'), 100);

INSERT INTO LAYOUT_COMPONENTS (key, type, title, badge, subtitle, is_enabled, is_active, is_on, icon_id, action_id,
                               widget_id, render_id, sort_order)
VALUES ('button_modal_back', 'button', 't:go_back', NULL, NULL, 'true', 'true', 'true',
        NULL,
        NULL,
        (SELECT id FROM LAYOUT_WIDGETS WHERE key = 'modal-alt-vd'), 
        (SELECT id FROM LAYOUT_RENDERS WHERE key = 'modal_secondary_button'), 200);

INSERT INTO LAYOUT_COMPONENTS (key, type, title, badge, subtitle, is_enabled, is_active, is_on, icon_id, action_id,
                               widget_id, render_id, sort_order)
VALUES ('button_modal_back', 'button', 't:go_back', NULL, NULL, 'true', 'true', 'true',
        NULL,
        NULL,
        (SELECT id FROM LAYOUT_WIDGETS WHERE key = 'modal-alt-me'), 
        (SELECT id FROM LAYOUT_RENDERS WHERE key = 'modal_secondary_button'), 200);

INSERT INTO LAYOUT_COMPONENTS (key, type, title, badge, subtitle, is_enabled, is_active, is_on, icon_id, action_id,
                               widget_id, render_id, sort_order)
VALUES ('button_modal_back', 'button', 't:go_back', NULL, NULL, 'true', 'true', 'true',
        NULL,
        NULL,
        (SELECT id FROM LAYOUT_WIDGETS WHERE key = 'modal-alt-ms'), 
        (SELECT id FROM LAYOUT_RENDERS WHERE key = 'modal_secondary_button'), 200);

INSERT INTO LAYOUT_COMPONENTS (key, type, title, badge, subtitle, is_enabled, is_active, is_on, icon_id, action_id,
                               widget_id, render_id, sort_order)
VALUES ('button_modal_go_vd', 'button', 't:go', NULL, NULL, 'true', 'true', 'true',
        NULL,
        (SELECT id FROM LAYOUT_ACTIONS WHERE type = 'deeplink' AND value = 'iym://transfers/vd'),
        (SELECT id FROM LAYOUT_WIDGETS WHERE key = 'modal-alt-vd'), 
        (SELECT id FROM LAYOUT_RENDERS WHERE key = 'modal_primary_button'), 300);

INSERT INTO LAYOUT_COMPONENTS (key, type, title, badge, subtitle, is_enabled, is_active, is_on, icon_id, action_id,
                               widget_id, render_id, sort_order)
VALUES ('button_modal_go_me', 'button', 't:go', NULL, NULL, 'true', 'true', 'true',
        NULL,
        (SELECT id FROM LAYOUT_ACTIONS WHERE type = 'deeplink' AND value = 'iym://transfers/me'),
        (SELECT id FROM LAYOUT_WIDGETS WHERE key = 'modal-alt-me'), 
        (SELECT id FROM LAYOUT_RENDERS WHERE key = 'modal_primary_button'), 300);

INSERT INTO LAYOUT_COMPONENTS (key, type, title, badge, subtitle, is_enabled, is_active, is_on, icon_id, action_id,
                               widget_id, render_id, sort_order)
VALUES ('button_modal_go_ms', 'button', 't:go', NULL, NULL, 'true', 'true', 'true',
        NULL,
        (SELECT id FROM LAYOUT_ACTIONS WHERE type = 'deeplink' AND value = 'iym://transfers/ms'),
        (SELECT id FROM LAYOUT_WIDGETS WHERE key = 'modal-alt-ms'), 
        (SELECT id FROM LAYOUT_RENDERS WHERE key = 'modal_primary_button'), 300);

-- LAYOUT_RENDERS

INSERT INTO LAYOUT_RENDERS (key, style, priority, element_size, color, background_color)
VALUES ('modal_secondary_button', 'Regular', 'Secondary', 'Standard', NULL, NULL);

INSERT INTO LAYOUT_RENDERS (key, style, priority, element_size, color, background_color)
VALUES ('modal_primary_button', 'Accent', 'Primary', 'Standard', NULL, NULL);

-- ALT_ACTIONS

INSERT INTO ALT_ACTIONS (key, target)
VALUES ('please_try_vd_2_transfer', 'modal-alt-vd');

INSERT INTO ALT_ACTIONS (key, target)
VALUES ('please_try_me_2_transfer', 'modal-alt-me');

INSERT INTO ALT_ACTIONS (key, target)
VALUES ('please_try_ms_2_transfer', 'modal-alt-ms');
