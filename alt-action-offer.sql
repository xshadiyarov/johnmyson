-- ALT_ACTIONS

INSERT INTO ALT_ACTIONS (key, target)
VALUES ('modal_alt_accept_offer', 'offer_not_accepted');

-- LAYOUT_ACTION

INSERT INTO LAYOUT_ACTIONS (type, value)
VALUES ('method', 'accept_offer');

-- LAYOUT_WIDGET

INSERT INTO LAYOUT_WIDGETS (key, type, sort_order)
VALUES ('modal_alt_accept_offer', 'modal', 100);

-- LAYOUT_COMPONENT

INSERT INTO LAYOUT_COMPONENTS (key, type, title, badge, subtitle, is_enabled, is_active, is_on, icon_id, action_id,
                               widget_id, sort_order)
VALUES ('modal_text_accept_offer', 'modal_text', 't:alt_accept_offer', NULL, 't:alt_accept_offer_text', 'true', 'true', 'true',
        (SELECT id FROM ICONS WHERE name = 'isom_particle_accept_offer'),
        NULL,
        (SELECT id FROM LAYOUT_WIDGETS WHERE key = 'modal_alt_accept_offer'), 100);

INSERT INTO LAYOUT_COMPONENTS (key, type, title, badge, subtitle, is_enabled, is_active, is_on, icon_id, action_id,
                               widget_id, sort_order)
VALUES ('link_accept_offer', 'link', 't:public_offer_1', NULL, 'morph', 'true', 'true', 'true',
        NULL,
        NULL,
        (SELECT id FROM LAYOUT_WIDGETS WHERE key = 'modal_alt_accept_offer'), 200);

INSERT INTO LAYOUT_COMPONENTS (key, type, title, badge, subtitle, is_enabled, is_active, is_on, icon_id, action_id,
                               widget_id, render_id, sort_order)
VALUES ('button_modal_cancel', 'button', 't:modal_offer_decline', NULL, NULL, 'true', 'true', 'true',
        NULL,
        NULL,
        (SELECT id FROM LAYOUT_WIDGETS WHERE key = 'modal_alt_accept_offer'), 
        (SELECT id FROM LAYOUT_RENDERS WHERE key = 'modal_secondary_button'), 300);

INSERT INTO LAYOUT_COMPONENTS (key, type, title, badge, subtitle, is_enabled, is_active, is_on, icon_id, action_id,
                               widget_id, render_id, sort_order)
VALUES ('button_modal_go_vd', 'button', 't:modal_offer_accept', NULL, NULL, 'true', 'true', 'true',
        NULL,
        (SELECT id FROM LAYOUT_ACTIONS WHERE type = 'method' AND value = 'accept_offer'),
        (SELECT id FROM LAYOUT_WIDGETS WHERE key = 'modal_alt_accept_offer'), 
        (SELECT id FROM LAYOUT_RENDERS WHERE key = 'modal_primary_button'), 400);
