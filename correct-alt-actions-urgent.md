Контракт
```json
{
    "data": {},
    "state": "error",
    "error_text": "Для перевода средств на карты VISA других банков, воспользуйтесь услугой VISA Direct во вкладке Услуги (ID: 1s32z61t1)",
    "actions": [
        {
            "key": "alt_vd",
            "type": "modal",
            "components": [
                {
                    "key": "modal_text_vd",
                    "type": "modal_text",
                    "title": "Visa Direct",
                    "subtitle": "Для перевода средств на карты VISA других банков, воспользуйтесь услугой VISA Direct",
                    "is_enabled": true,
                    "is_on": true,
                    "icon": {
                        "id": "601",
                        "name": "isom_particle_transfer_vd",
                        "type": "banking_services",
                        "links": {
                            "light": "https://storage.googleapis.com/iyb-mobile-app-front/api-live/images/icons/....png",
                            "dark": "https://storage.googleapis.com/iyb-mobile-app-front/api-live/images/icons/....png"
                        }
                    },
                    "action": null
                },
                {
                    "key": "button_modal_back",
                    "type": "button",
                    "title": "Вернуться",
                    "subtitle": null,
                    "is_enabled": true,
                    "is_on": true,
                    "icon": null,
                    "rendering": {
                        "key": "modal_secondary_button",
                        "style": "Regular",
                        "priority": "Secondary",
                        "size": "Standard",
                        "color": null,
                        "background_color": null
                    },
                    "actions": null
                },
                {
                    "key": "button_modal_go_vd",
                    "type": "button",
                    "title": "Перейти",
                    "subtitle": null,
                    "is_enabled": true,
                    "is_on": true,
                    "icon": null,
                    "rendering": {
                        "key": "modal_primary_button",
                        "style": "Accent",
                        "priority": "Primary",
                        "size": "Standard",
                        "color": null,
                        "background_color": null
                    },
                    "actions": {
                        "type": "deeplink",
                        "value": "iym://transfers/vd"
                    }
                }
            ]
        }
    ],
    "code": 100
}
```

Миграции
```sql
-- ALT_ACTIONS

INSERT INTO ALT_ACTIONS (key, target)
VALUES ('please_try_vd_2_transfer', 'modal_alt_vd');

INSERT INTO ALT_ACTIONS (key, target)
VALUES ('please_try_me_2_transfer', 'modal_alt_me');

INSERT INTO ALT_ACTIONS (key, target)
VALUES ('please_try_ms_2_transfer', 'modal_alt_ms');
```
```sql
-- LAYOUT_WIDGETS

INSERT INTO LAYOUT_WIDGETS (key, type, sort_order)
VALUES ('modal_alt_vd', 'modal', 100);

INSERT INTO LAYOUT_WIDGETS (key, type, sort_order)
VALUES ('modal_alt_me', 'modal', 100);

INSERT INTO LAYOUT_WIDGETS (key, type, sort_order)
VALUES ('modal_alt_ms', 'modal', 100);

-- LAYOUT_RENDERS

INSERT INTO LAYOUT_RENDERS (key, style, priority, element_size, color, background_color)
VALUES ('modal_secondary_button', 'Regular', 'Secondary', 'Standard', NULL, NULL);

INSERT INTO LAYOUT_RENDERS (key, style, priority, element_size, color, background_color)
VALUES ('modal_primary_button', 'Accent', 'Primary', 'Standard', NULL, NULL);

-- LAYOUT_COMPONENTS

INSERT INTO LAYOUT_COMPONENTS (key, type, title, badge, subtitle, is_enabled, is_active, is_on, icon_id, action_id,
                               widget_id, sort_order)
VALUES ('modal_text-vd', 'modal_text', 't:vd_service', NULL, 't:alt_text_vd', 'true', 'true', 'true',
        (SELECT id FROM ICONS WHERE name = 'isom_particle_transfer_vd'),
        NULL,
        (SELECT id FROM LAYOUT_WIDGETS WHERE key = 'modal_alt_vd'), 100);

INSERT INTO LAYOUT_COMPONENTS (key, type, title, badge, subtitle, is_enabled, is_active, is_on, icon_id, action_id,
                               widget_id, sort_order)
VALUES ('modal_text-me', 'modal_text', 't:me_service', NULL, 't:alt_text_me', 'true', 'true', 'true',
        (SELECT id FROM ICONS WHERE name = 'isom_particle_transfer_me'),
        NULL,
        (SELECT id FROM LAYOUT_WIDGETS WHERE key = 'modal_alt_me'), 100);

INSERT INTO LAYOUT_COMPONENTS (key, type, title, badge, subtitle, is_enabled, is_active, is_on, icon_id, action_id,
                               widget_id, sort_order)
VALUES ('modal_text-ms', 'modal_text', 't:ms_service', NULL, 't:alt_text_ms', 'true', 'true', 'true',
        (SELECT id FROM ICONS WHERE name = 'isom_particle_transfer_ms'),
        NULL,
        (SELECT id FROM LAYOUT_WIDGETS WHERE key = 'modal_alt_ms'), 100);

INSERT INTO LAYOUT_COMPONENTS (key, type, title, badge, subtitle, is_enabled, is_active, is_on, icon_id, action_id,
                               widget_id, render_id, sort_order)
VALUES ('button_modal_back', 'button', 't:go_back', NULL, NULL, 'true', 'true', 'true',
        NULL,
        NULL,
        (SELECT id FROM LAYOUT_WIDGETS WHERE key = 'modal_alt_vd'), 
        (SELECT id FROM LAYOUT_RENDERS WHERE key = 'modal_secondary_button'), 200);

INSERT INTO LAYOUT_COMPONENTS (key, type, title, badge, subtitle, is_enabled, is_active, is_on, icon_id, action_id,
                               widget_id, render_id, sort_order)
VALUES ('button_modal_back', 'button', 't:go_back', NULL, NULL, 'true', 'true', 'true',
        NULL,
        NULL,
        (SELECT id FROM LAYOUT_WIDGETS WHERE key = 'modal_alt_me'), 
        (SELECT id FROM LAYOUT_RENDERS WHERE key = 'modal_secondary_button'), 200);

INSERT INTO LAYOUT_COMPONENTS (key, type, title, badge, subtitle, is_enabled, is_active, is_on, icon_id, action_id,
                               widget_id, render_id, sort_order)
VALUES ('button_modal_back', 'button', 't:go_back', NULL, NULL, 'true', 'true', 'true',
        NULL,
        NULL,
        (SELECT id FROM LAYOUT_WIDGETS WHERE key = 'modal_alt_ms'), 
        (SELECT id FROM LAYOUT_RENDERS WHERE key = 'modal_secondary_button'), 200);

INSERT INTO LAYOUT_COMPONENTS (key, type, title, badge, subtitle, is_enabled, is_active, is_on, icon_id, action_id,
                               widget_id, render_id, sort_order)
VALUES ('button_modal_go_vd', 'button', 't:go', NULL, NULL, 'true', 'true', 'true',
        NULL,
        (SELECT id FROM LAYOUT_ACTIONS WHERE type = 'deeplink' AND value = 'iym://transfers/vd'),
        (SELECT id FROM LAYOUT_WIDGETS WHERE key = 'modal_alt_vd'), 
        (SELECT id FROM LAYOUT_RENDERS WHERE key = 'modal_primary_button'), 300);

INSERT INTO LAYOUT_COMPONENTS (key, type, title, badge, subtitle, is_enabled, is_active, is_on, icon_id, action_id,
                               widget_id, render_id, sort_order)
VALUES ('button_modal_go_me', 'button', 't:go', NULL, NULL, 'true', 'true', 'true',
        NULL,
        (SELECT id FROM LAYOUT_ACTIONS WHERE type = 'deeplink' AND value = 'iym://transfers/me'),
        (SELECT id FROM LAYOUT_WIDGETS WHERE key = 'modal_alt_me'), 
        (SELECT id FROM LAYOUT_RENDERS WHERE key = 'modal_primary_button'), 300);

INSERT INTO LAYOUT_COMPONENTS (key, type, title, badge, subtitle, is_enabled, is_active, is_on, icon_id, action_id,
                               widget_id, render_id, sort_order)
VALUES ('button_modal_go_ms', 'button', 't:go', NULL, NULL, 'true', 'true', 'true',
        NULL,
        (SELECT id FROM LAYOUT_ACTIONS WHERE type = 'deeplink' AND value = 'iym://transfers/ms'),
        (SELECT id FROM LAYOUT_WIDGETS WHERE key = 'modal_alt_ms'), 
        (SELECT id FROM LAYOUT_RENDERS WHERE key = 'modal_primary_button'), 300);
```
